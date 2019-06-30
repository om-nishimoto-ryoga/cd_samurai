class CartsController < ApplicationController
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
  end

end
