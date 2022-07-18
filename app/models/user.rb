class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  VALID_PHONE_REGEX = /\A\d{10}$|^\d{11}\z/
  validates :phone, presence: true, format: { with: VALID_PHONE_REGEX }
end
