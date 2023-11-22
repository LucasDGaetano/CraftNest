class Reservation < ApplicationRecord
  belongs_to :atelier
  belongs_to :user
  has_one :review

  validates :atelier_id, presence: true
  validates :user_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  validate :end_date_after_start_date
  validate :start_date_not_past

  private

  def end_date_after_start_date
    if end_date <= start_date
      errors.add(:end_date, "Must be after the start date!")
    end
  end

  def start_date_not_past
    if start_date < Date.today
      errors.add(:start_date, "Can't be in the past")
    end
  end
end
