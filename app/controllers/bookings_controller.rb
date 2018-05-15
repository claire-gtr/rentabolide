class BookingsController < ApplicationController
  def index
   @booking = Booking.all
 end

 def create
   @car = Car.find(params[:car_id])
   @booking = @car.bookings.new(booking_params)
   if @booking.save
     redirect_to car_path(@car)
   else
     render "cars/show"
   end
 end

 private

 def booking_params
   params.require(:booking).permit(:start_time, :end_time, :car_id, :user_id)
 end
end
