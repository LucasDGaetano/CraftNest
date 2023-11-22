class Review < ApplicationRecord
  belongs_to :user
  belongs_to :reservation

  validates :rating, presence: true, numericality: true, inclusion: { in: (0..5) }
  validates :content, presence: true, length: { minimum: 20 }
end
