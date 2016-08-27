class Attraction < ApplicationRecord
  belongs_to :city
  has_many :reviews
  has_many :users, through: :reviews

  def review=(review_hash)
    @new_review = Review.new(review_hash)
    @new_review.save
    self.reviews << @new_review
  end

end
