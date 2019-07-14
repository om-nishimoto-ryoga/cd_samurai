class OrderProductsController < ApplicationController
  def new
  	@order = Order.where(order: :order)
  	@order_product = OrderProduct.new
  end

  def create
  	@order_product = OrderProduct.new
  	@order_product.save
  	redirect_to ordered_users_path
  end
end
