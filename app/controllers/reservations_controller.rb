class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservations_params)
    @atelier = Atelier.new(params[:atelier_id])
    @reservation.atelier = @atelier
    if @reservation.save
      redirect_to atelier_path(@atelier)
    else
      render :new
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy

    redirect_to atelier_path(@reservations.atelier)
  end

  private

  def reservations_params
    param.require("reservation").permit(:atelier_id, :user_id, :review_id, :start_date, :end_date)
  end
end
