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

  def update
  end

  def destroy
    @cart = Cart.find(params[:id])

  end

  private
  def cart_params
    params.require(:cart).permit(:user_is, :product_id, :quantity)
  end
end
