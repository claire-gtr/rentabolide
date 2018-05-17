class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      @cars = Car.where("model ILIKE ?", "%#{params[:query]}%")
    else
      @cars = Car.all

    @cars = Car.where.not(latitude: nil, longitude: nil)

    @markers = @cars.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude
      }
    end
  end
end

  def show
    @car = Car.find(params[:id])
    @booking = Booking.new
  end

  private

  def car_params
    params.require(:car).permit(:name, :description, :model, :address, :photo)
  end
end
