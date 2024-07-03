class Review < ApplicationRecord
  belongs_to :restaurant
  # if there is a review, can do review.restaurant
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
