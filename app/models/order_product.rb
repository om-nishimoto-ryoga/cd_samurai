class OrderProduct < ApplicationRecord
  belongs_to :order
  attachment :product_image
end
