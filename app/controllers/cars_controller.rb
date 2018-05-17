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

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to my_cars_path
    else
      render "cars/new"
    end
  end



  def show
    @car = Car.find(params[:id])
    @booking = Booking.new
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    redirect_to my_cars_path
  end

  private

  def car_params
    params.require(:car).permit(:name, :description, :model, :address, :user_id, :photo)
  end
end
