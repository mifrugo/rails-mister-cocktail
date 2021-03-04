class CocktailsController < ApplicationController

  before_action :all_cocktail, only: %i[index]
  before_action :single_cocktail, only: %i[show update]

  TITLE = 'The cocktailz'.freeze
  DESCRIPTION = 'Search and drink your favorite cocktails'.freeze

  def index
    @title = TITLE
    @description = DESCRIPTION
    @cocktail = Cocktail.new
  end

  def show
    @title = @cocktail.name
    @cocktail_button = 'Update cocktail'
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.new(cocktails_params)

    if @cocktail.save
      redirect_to cocktail_path(@cocktail.id)
    else
      all_cocktail
      @title = TITLE
      @description = DESCRIPTION
      render :index
    end
  end

  def update
    @cocktail.update(cocktails_params)
    redirect_to cocktail_path(@cocktail.id)
  end

  private

  def cocktails_params
    params.require(:cocktail).permit(:name)
  end

  def single_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def all_cocktail
    @cocktails = Cocktail.all
  end
end
