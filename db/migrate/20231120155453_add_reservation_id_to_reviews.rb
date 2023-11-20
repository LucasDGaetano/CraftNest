class AddReservationIdToReviews < ActiveRecord::Migration[7.1]
  def change
    add_reference :reviews, :reservation, index: true, foreign_key: true
  end
end
