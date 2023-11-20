class Reservation < ApplicationRecord
  belongs_to :atelier
  belongs_to :user
  belongs_to :review
end
