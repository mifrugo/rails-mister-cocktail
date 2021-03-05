class SearchController < ApplicationController
  def index
    lookup = params[:q].downcase

    if lookup.length >= 3
      @cocktails = Cocktail.where('lower(name) like ?', "%#{lookup}%")
      @cocktail = Cocktail.new
      render '/cocktails/index'
    else
      redirect_to root_path
    end

  end
end
