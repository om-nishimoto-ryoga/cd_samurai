class OrdersController < ApplicationController
  def new
    @order = Order.new
  end
  def show
    @order = Order.find(params[:id])
  end
  def create
  order = Order.new(order_params)
  order.user_id = current_user.id
  order.save
  redirect_to new_order_order_product_path(order)
  end

private

  def order_params
  params.require(:order).permit(:payment_method,:to_address, :user_id,)
  end
end
