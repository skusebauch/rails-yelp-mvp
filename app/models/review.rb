class Review < ApplicationRecord
  belongs_to :restaurant

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
