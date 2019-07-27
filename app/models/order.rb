class Order < ApplicationRecord
  belongs_to :user
  has_many :order_products, dependent: :destroy
  accepts_nested_attributes_for :order_products, allow_destroy: true
  enum payment_method: {card: 0, bank: 1, pay: 2}
end
