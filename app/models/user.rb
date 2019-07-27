class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :addresses, dependent: :destroy
  has_many :carts, dependent: :destroy
  has_many :orders, dependent: :destroy

  enum gender: {man:0, woman:1, custom:2}

  REGISTRABLE_ATTRIBUTES = %i(
    last_name
    first_name
    last_name_kana
    first_name_kana
    email
    birth_date(1i) birth_date(2i) birth_date(3i)
    gender
  )
end
