class AteliersController < ApplicationController
  before_action :set_atelier, only: [:show, :edit, :update, :destroy]

  def index
    @ateliers = Atelier.all
  end

  def show
    @reservation = Reservation.new
  end

  def new
    @atelier = Atelier.new
  end

  def create
    @atelier = Atelier.new(atelier_params)
    @user = User.find(params[:user_id])
    @atelier.user = @user
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
  end

  private

  def atelier_params
    params.require('atelier').permit(:name, :location, :category, :price)
  end

  def set_atelier
    @atelier = Atelier.find(params[:atelier_id])
  end

end
