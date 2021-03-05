class SearchController < ApplicationController
  def index
    lookup = params[:q]

    @cocktails = Cocktail.where('name like ?', "%#{lookup}%") if lookup.length >= 3

    @cocktail = Cocktail.new
    render '/cocktails/index'
  end
end
