class Product < ApplicationRecord
  belongs_to :genre
  belongs_to :admin
  attachment :product_image
  has_many :product_discs
  # 子としてネストする
  accepts_nested_attributes_for :product_discs, allow_destroy: true

end
