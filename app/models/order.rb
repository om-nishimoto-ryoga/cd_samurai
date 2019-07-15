class Order < ApplicationRecord
  belongs_to :user
  has_many :order_products, dependent: :destroy

  enum payment_method: {card: 0, bank: 1, pay: 2}
end
