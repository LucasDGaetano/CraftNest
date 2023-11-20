class Atelier < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :reviews, through: :reservations
  has_many :users, through: :reservations

  validates :name, presence: true, length: { in: 6..40 }
  validates :location, presence: true
  validates :price, presence: true, comparison: { greater_than: 0 }

end
