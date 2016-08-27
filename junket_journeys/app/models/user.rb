class User < ApplicationRecord
  has_many :reviews
  has_many :attractions, through: :reviews
  has_secure_password
end
