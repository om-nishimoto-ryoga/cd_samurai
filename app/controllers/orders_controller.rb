class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
  @order = Order.new(order_params)
  @order.save
  redirect_to new_order_product_path
  end

private

  def order_params
  params.require(:order).permit(:payment_method)
  end
end
