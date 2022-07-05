class ReviewsController < ApplicationController
  # [:new, :create]
  def new
    @review = review.new
  end

  def create
    @review = review.new(rev_params)
    @review.save
    redirect_to restuarant_path(@review)
  end

  private

  def rev_params
    params.require(:review).permit(:restaurant, :content, :rating)
  end
end
