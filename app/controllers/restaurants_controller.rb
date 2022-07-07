class RestaurantsController < ApplicationController
  # :index, :show, :create, :new
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(rest_params)
    redirect_to restaurant_path(@restaurant)
  end

  def create
    @restaurant = Restaurant.new(rest_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def rest_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
