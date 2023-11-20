class Reservation < ApplicationRecord
  belongs_to :atelier
  belongs_to :user
  belongs_to :review

  validates :atelier_id, presence: true
  validates :user_id, presence: true
  validates :review_id, presence: true
  validates :start_date, presence: true
  validates :start_date, availability: true
  validates :end_date, presence: true
  validates :end_date, availability: true

  validate :end_date_after_start_date

  private

  def end_date_after_start_date
    if end_date <= start_date
      errors.add(:end_date, "Must be after the start date!")
    end
  end
end
