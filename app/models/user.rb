class User < ApplicationRecord

  has_many :pets

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true

  has_one_attached :photo

  has_secure_password
end
