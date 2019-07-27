class OrdersController < ApplicationController
  def new
    @order = Order.new
    @addresses = Address.where(user_id: current_user.id)
    @carts = Cart.where(user_id: current_user.id)
    @order.order_products.build
  end

  def create
  @order = Order.new(order_params)
  @order.user_id = current_user.id
  @order.save
  redirect_to new_order_order_product_path(@order)
  end

private

  def order_params
  params.require(:order).permit(:payment_method,:to_address, :user_id,
                 addresses_attributes: [:id, :genre_id, :artist_name, :cd_title, :label_name, :product_image, :price, :ship_status])
  end
end
