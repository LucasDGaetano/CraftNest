class AteliersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_atelier, only: [:show, :edit,:update, :destroy]

  def index
    @ateliers = Atelier.all
    @sum = 0.0
  end

  def show
    @reservation = Reservation.new
    @reservations = Reservation.all
  end

  def new
    @atelier = Atelier.new
  end

  def create
    @atelier = Atelier.new(atelier_params)
    # @user = User.find(params[:user_id]) # verifier autre moyen de recuperer le user genre session.user
    @atelier.user = current_user
    if @atelier.save
      redirect_to atelier_path(@atelier)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @atelier.update(atelier_params)
    redirect_to atelier_path(@atelier)
  end

  def destroy
    @atelier.destroy
    redirect_to ateliers_path
  end

  private

  def atelier_params
    params.require('atelier').permit(:name, :location, :category, :price, :photo)
  end

  def set_atelier
    @atelier = Atelier.find(params[:id])
  end

end
