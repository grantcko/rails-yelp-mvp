class Review < ApplicationRecord
  # association
  belongs_to :restaurant
  # validation
  validates :rating, presence: true, numericality: { only_integer: true, in: 0..5 }
  validates :content, presence: true
end
