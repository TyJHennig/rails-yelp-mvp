class RestaurantsController < ApplicationController
  # :index, :show, :create, :new
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.show(params [:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(rest_params)
    @restaurant.save
    redirect_to restuarant_path(@restaurant)
  end

  private

  def rest_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
