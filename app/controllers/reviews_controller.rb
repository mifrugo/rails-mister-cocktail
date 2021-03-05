class ReviewsController < ApplicationController
  before_action :single_review, only: %i[destroy]

  def create
    @cocktail = Cocktail.find(params[:id])
    @review = Review.new(review_params)
    @review.cocktail = @cocktail

    if @review.save
      redirect_to cocktail_path(@cocktail)
    else
      raise
    end
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
