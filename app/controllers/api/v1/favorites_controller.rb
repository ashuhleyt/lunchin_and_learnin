class Api::V1::FavoritesController < ApplicationController
  def create 
    user = User.find_by(api_key: params[:api_key])
    if user 
      user.favorites.create(favorite_params)
      render json: FavoriteRecipeSerializer.add
    else 
      render json: ErrorSerializer.invalid_api_key
    end
  end



  private 
  def favorite_params 
    params.permit(:country, :recipe_link, :recipe_title)
  end
end