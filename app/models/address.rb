class Address < ApplicationRecord
  belongs_to :user, :dependent destroy:
end
