class OrderProductsController < ApplicationController
  def new
    @order = Order.find(params[:order_id])
  	@order_product = OrderProduct.new
  end

  def create
  	@order_product = OrderProduct.new
  	@order_product.save
  	redirect_to ordered_users_path
  end

  private
  def order_product_params
  	params.require(:order_product).permit(:order_id)
  end
end
