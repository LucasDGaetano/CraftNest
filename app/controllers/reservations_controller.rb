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
      redirect_to atelier_path(@atelier)
    else
      render "ateliers/show", status: :unprocessable_entity
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    atelier = @reservation.atelier
    @reservation.destroy
    redirect_to atelier_path(atelier), status: :see_other
  end

  private

  def set_atelier
    @atelier = Atelier.find(params[:atelier_id])
  end

  def reservations_params
    params.require("reservation").permit(:start_date, :end_date)
  end
end
