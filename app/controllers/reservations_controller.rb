class ReservationsController < ApplicationController

  before_action :set_atelier, only: %i[new create]
  def new
    @reservation = Reservation.new
  end

  def show
    @reservation = Reservation.find(params[:id])
    @reviews = Review.all
    @review = Review.new
  end

  def create
    @reservation = Reservation.new(reservations_params)
    @reservation.user = current_user
    @reservation.atelier = @atelier
    if @reservation.save
      redirect_to ateliers_path(@atelier)
    else
      render :new
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy

    redirect_to ateliers_path(@reservations.atelier)
  end

  private

  def set_atelier
    @atelier = Atelier.find(params[:atelier_id])
  end

  def reservations_params
    params.require("reservation").permit(:start_date, :end_date)
  end
end
