class Review < ApplicationRecord
  belongs_to :restaurant

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates_inclusion_of :rating, in: 0..5

end
