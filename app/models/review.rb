class Review < ActiveRecord::Base
  RATINGS = (0..5)
  belongs_to :restaurant
  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, inclusion: {in: RATINGS, message: "Stars must be 1, 2, 3, 4 or 5"}
  validates :rating, presence: {message: "rating should be present"}
  validates :rating, numericality: {only_integer: true}

end
