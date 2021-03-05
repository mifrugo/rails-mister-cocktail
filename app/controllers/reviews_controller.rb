class ReviewsController < ApplicationController
  before_action :single_review, only: %i[destroy]

  def create
    @cocktail = Cocktail.find(params[:id])
    @review = Review.new(review_params)
    @review.cocktail = @cocktail

    flash[:error] = @review.errors unless @review.save
    flash[:redirect] = 'review'

    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @review.destroy

    redirect_to cocktail_path(@review.cocktail)
  end

  private

  def review_params
    params.require(:review).permit(:review, :rating)
  end

  def single_review
    @review = Review.find(params[:id])
  end
end
