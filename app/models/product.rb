class Product < ApplicationRecord
  belongs_to :genre
  attachment :product_image
  has_many :product_discs, dependent: :destroy
  # 子としてネストする
  accepts_nested_attributes_for :product_discs, allow_destroy: true

  def cart_add(user)
  	carts = user.carts
  	cart = carts.find_by(product_id: self.id)
    cart.quantity += 1
    cart.save
   end

   def cart_by(user)
   	carts = user.carts
    carts.where(product_id: self.id).exists?
   end

end
