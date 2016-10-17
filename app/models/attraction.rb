class Attraction < ApplicationRecord
  belongs_to :city
  has_many :reviews
  has_many :users, through: :reviews
  accepts_nested_attributes_for :reviews
  validates_presence_of :name
  validates :name, uniqueness: true

  def review=(review_hash)
    @new_review = Review.new(review_hash)
    self.reviews << @new_review
  end

end
