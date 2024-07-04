class Review < ApplicationRecord
  belongs_to :restaurant
  # if there is a review, can do review.restaurant
  RATINGS = (0..5)
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: RATINGS }
end
