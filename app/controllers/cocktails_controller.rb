class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end
end
