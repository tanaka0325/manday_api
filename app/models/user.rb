class User < ApplicationRecord
  validates :name, length: { maximum: 255 }, presence: true
  validates :email, length: { maximum: 255 }, presence: true, confirmation: true
  validates :email_confirmation, presence: true, on: :create

  has_secure_password
end
