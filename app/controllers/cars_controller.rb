class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @cars = Car.where("model ILIKE ?", "%#{params[:query]}%")
    else
      @cars = Car.all

    @cars = Car.where.not(latitude: nil, longitude: nil)

    # image = {
    #       url: 'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png',
    #       # This marker is 20 pixels wide by 32 pixels high.
    #       size: new google.maps.Size(20, 32),
    #       # The origin for this image is (0, 0).
    #       origin: new google.maps.Point(0, 0),
    #       # The anchor for this image is the base of the flagpole at (0, 32).
    #       anchor: new google.maps.Point(0, 32)
    #     }

    @markers = @cars.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude,
        infoWindow: { content: render_to_string(partial: "/cars/marker_content", locals: { car: car }) },
        icon: ActionController::Base.helpers.asset_path("logo_map_4.png")
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
