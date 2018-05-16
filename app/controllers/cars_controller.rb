class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @cars = Car.all

    @cars = Car.where.not(latitude: nil, longitude: nil)

    @markers = @cars.map do |car|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show
    @car = Car.find(params[:id])

    @booking = Booking.new
  end

  private

  def car_params
    params.require(:car).permit(:name, :description, :model, :address)
  end
end
