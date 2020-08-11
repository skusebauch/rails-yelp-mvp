class ReviewsController < ApplicationController
  before_action :set_review
  def new
    # if you want do not want to have extra path for this - you can also put this form at show restaurant page
    # than you would not need to get the form here. -> than you need to add "@review = Review.new" at restaurants#show action.
    # refactor
    # @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    # every review belongs to restaurant - see model
    # refactor
    # @restaurant = Restaurant.find(params[:restaurant_id])
    # post form
    @review = Review.new(review_params)
    # save instance variable review.restaurant to restaurant(id) that you can access this at the view
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_review
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
