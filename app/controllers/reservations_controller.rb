class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
    @atelier = Atelier.find(params[:atelier_id].to_i)
  end

  def show

  end

  def create
    @reservation = Reservation.new(reservations_params)
    @atelier = Atelier.find(params[:atelier_id])
    @reservation.user = current_user
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
    params.require("reservation").permit(:atelier_id, :user_id, :start_date, :end_date)
  end
end
