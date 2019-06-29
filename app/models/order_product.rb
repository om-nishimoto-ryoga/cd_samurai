class OrderProduct < ApplicationRecord
  belongs_to :genre
  belongs_to :order
end
