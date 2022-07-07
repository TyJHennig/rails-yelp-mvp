class ReviewsController < ApplicationController
  # [:new, :create]
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(rev_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def rev_params
    params.require(:review).permit(:content)
  end
end
