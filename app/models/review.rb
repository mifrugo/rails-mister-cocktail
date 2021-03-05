class Review < ApplicationRecord
  belongs_to :cocktail

  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: 0..5
  validates :review, presence: true
end
