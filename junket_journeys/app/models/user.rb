class User < ApplicationRecord
  has_many :reviews
  has_many :attractions, through: :reviews
  has_secure_password

  validates_confirmation_of :password
  validates_presence_of :name
end
