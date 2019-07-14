class Cart < ApplicationRecord
  belongs_to :user, :dependent destroy:
  belongs_to :product
end
