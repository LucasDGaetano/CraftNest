class RemoveReviewIdFromReservations < ActiveRecord::Migration[7.1]
  def change
    remove_reference :reservations, :review, index: true, foreign_key: true
  end
end
