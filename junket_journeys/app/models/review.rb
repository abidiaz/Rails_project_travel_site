class Review < ApplicationRecord
  belongs_to :attraction
  belongs_to :user
  
  validates_presence_of :rating
  validates_presence_of :content
end
