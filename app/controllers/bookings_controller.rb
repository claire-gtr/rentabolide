class BookingsController < ApplicationController
  def index
   @bookings = Booking.where(user_id: current_user)
   end

  def create
   @car = Car.find(params[:car_id])
   @booking = Booking.new(booking_params)
   @booking.car = @car
   @booking.user = current_user


   if @booking.save
     redirect_to bookings_path
   else
     render "cars/show"
   end
  end

  private

  def booking_params
   params.require(:booking).permit(:start_time, :end_time)
  end
end
