class Api::V1::RecipesController < ApplicationController 
  def index 
    country = params[:country] || CountryFacade.random
    if CountryFacade.valid_country?(country)
      recipes = RecipeFacade.get_all_recipes(country)
      render json: RecipeSerializer.serialize(recipes)    
    end
  end
end