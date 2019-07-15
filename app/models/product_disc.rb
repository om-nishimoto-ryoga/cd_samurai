class ProductDisc < ApplicationRecord
  belongs_to :product
  has_many :product_disc_songs, dependent: :destroy
  # 子としてネストする
  accepts_nested_attributes_for :product_disc_songs, allow_destroy: true

end
