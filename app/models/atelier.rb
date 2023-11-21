class Atelier < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :reviews, through: :reservations
  has_many :users, through: :reservations
  has_one_attached :photo

  CATEGORIES = %w[Peinture Sculpture Céramique Bois Textile Photographie Joaillerie]

  validates :name, presence: true, length: { in: 6..40 }
  validates :location, presence: true
  validates :price, presence: true, comparison: { greater_than: 0 }
  validates :category, inclusion: { in: CATEGORIES }
end
