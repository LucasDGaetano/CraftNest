class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @reservation = Reservation.find(params[:reservation_id])
    @review.user = current_user
    @review.reservation = @reservation
    if @review.save
      redirect_to reservation_path(@reservation)
    else
      render "reservations/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require("review").permit(:rating, :content)
  end
end
