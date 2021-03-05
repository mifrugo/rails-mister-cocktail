class SearchController < ApplicationController
  def index
    lookup = params[:q].downcase

    @cocktails = Cocktail.where('lower(name) like ?', "%#{lookup}%") if lookup.length >= 3

    @cocktail = Cocktail.new
    render '/cocktails/index'
  end
end
