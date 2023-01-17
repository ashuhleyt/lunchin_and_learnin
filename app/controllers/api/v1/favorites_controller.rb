class Api::V1::FavoritesController < ApplicationController
  def create 
    user = User.find_by(api_key: params[:api_key])
    if user 
      user.favorites.create(favorite_params)
      render json: FavoriteRecipeSerializer.add, status:201
    else 
      render json: ErrorSerializer.invalid_api_key, status: 400
    end
  end



  private 
  def favorite_params 
    params.permit(:country, :recipe_link, :recipe_title)
  end
end