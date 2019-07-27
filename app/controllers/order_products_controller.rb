class OrderProductsController < ApplicationController
  def new
    @order = Order.find(params[:order_id])
    @order_product = OrderProduct.new
  end

  def create
    order = Order.find(params[:order_id])
    carts = current_user.carts
    carts.each do |cart|
      order_product = OrderProduct.new
      order_product.order_id = order.id
      order_product.genre_id = cart.product.genre_id
      order_product.artist_name = cart.product.artist_name
      order_product.cd_title = cart.product.cd_title
      order_product.label_name = cart.product.label_name
      order_product.product_image_id = cart.product.product_image_id
      order_product.price = cart.product.price
  	  order_product.save
    end
    carts.delete_all
  	redirect_to ordered_users_path
  end

  private
  def order_product_params
  	params.require(:order_product).permit(:order_id,:genre_id,:artist_name,:cd_title,
                  :label_name,:product_image,:price,:ship_status)
  end
end