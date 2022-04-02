class PublicRecipesController < ApplicationController
  def index
    @user = current_user
    @total_item = Recipe.all.count
    @prices = Food.all.sum(:price)
    @all_recipe = Recipe.all
    @public_recipes = @all_recipe.where(public: true)
  end
end
