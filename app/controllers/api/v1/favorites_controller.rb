class Api::V1::FavoritesController < ApplicationController
  def create 
    user = User.find_by(api_key: params[:api_key])
    if user 
      user.favorites.create(favorite_params)
      render json: FavoriteRecipeSerializer.add, status: 201
    else 
      render json: ErrorSerializer.invalid_api_key, status: 400
    end
  end

  def index 
    user = User.find_by(api_key: params[:api_key])
    if user 
      favs = user.favorites
      render json: FavoriteRecipeSerializer.get_all_users_favorites(favs), status: 201
    else 
      render json: ErrorSerializer.favorite_not_found, status: 400
    end
  end



  private 
  def favorite_params 
    params.permit(:country, :recipe_link, :recipe_title)
  end
end