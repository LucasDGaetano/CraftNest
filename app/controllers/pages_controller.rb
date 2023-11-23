class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @ateliers = Atelier.all
    @markers = @ateliers.geocoded.map do |atelier|
      {
        lat: atelier.latitude,
        lng: atelier.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { atelier: atelier })
      }
    end
  end

  def dashboard
    # @reservations = current_user.reservations
    @user = current_user
  end
end
