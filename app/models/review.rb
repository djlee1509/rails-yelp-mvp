class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, :restaurant_id, presence: true
  validates :rating, inclusion: { in: (0..5).to_a }, numericality: { only_integer: true }
end
