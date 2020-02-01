class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :ratings, presence: true
  validates :ratings, numericality: true, length: { in: 1..10 }
end
