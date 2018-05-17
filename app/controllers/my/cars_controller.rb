class My::CarsController < ApplicationController
  def index
    @cars = Car.where(user_id: current_user)
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to my_cars_path
  end

  private

  def car_params
    params.require(:car).permit(:name, :description, :model, :address, :user_id, :photo)
  end
end
