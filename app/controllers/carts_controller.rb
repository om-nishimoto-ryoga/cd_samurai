class CartsController < ApplicationController
   before_action :authenticate_user!

  def index
	@carts = Cart.where(user_id: current_user.id)
  end

  def create

	  @product = Product.find(params[:product_id])
    @cart = current_user.carts.new(product_id: @product.id)
    @cart.save
    redirect_to carts_path
  end

  def update_all
    params.permit!
    params[:cart].keys.each do |id|
    @cart = Cart.find(id.to_i)
    @cart.update_attributes(params[:cart][id])
    end
  redirect_to new_order_path
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy
    redirect_to carts_path
  end

  private
  def cart_params
    params.require(:cart).permit(:user_is, :product_id, :quantity)
  end
end
