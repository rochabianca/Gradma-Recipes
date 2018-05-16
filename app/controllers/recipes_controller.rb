class RecipesController < ApplicationController
  def index
    @recipes = ['Chiken Ramen', 'Spice Chiken Ramen', 'Pizza', 'Spagetti']
  end
end
