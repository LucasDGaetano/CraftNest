class Atelier < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :reviews, through: :reservations
  has_many :users, through: :reservations
  has_one_attached :photo
  geocoded_by :location

  CATEGORIES = %w[Peinture Sculpture Céramique Bois Textile Photographie Joaillerie]

  validates :name, presence: true, length: { in: 6..40 }
  validates :location, presence: true
  validates :surface, presence: true
  validates :description, presence: true, length: { minimum: 20 }
  validates :photo, presence: true
  validates :price, presence: true, comparison: { greater_than: 0 }
  validates :category, inclusion: { in: CATEGORIES }
  after_validation :geocode, if: :will_save_change_to_location?
end
