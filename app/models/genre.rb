class Genre < ApplicationRecord
  has_many :products
  has_many :order_products
end
