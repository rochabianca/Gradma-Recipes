class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit 
    @recipe = Recipe.find(params[:id])
  end

  def update 
    @recipe = Recipe.find(params[:id])
    params = recipe_params()
    @recipe.update(params)

    redirect_to @recipe
  end

  def new
    @recipe = Recipe.new
  end

  def create
    params = recipe_params()
    @recipe = Recipe.new(params)
    @recipe.save!
    redirect_to @recipe
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :stuff, :calories, :prepare_mode, :cost)
  end
end
