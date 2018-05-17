class My::CarsController < ApplicationController
  def index
    @cars = Car.where(user_id: current_user)
  end
end
