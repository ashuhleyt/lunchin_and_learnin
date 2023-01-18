class FavoriteRecipeSerializer
  def self.add 
   {
      "success": 'Favorite added successfully'
    }
  end

  def self.get_all_users_favorites(favs)
    {
      "data": favs.map do |fav|
        { "id": fav.id, 
          "type": "favorite",
          "attributes": {
            "recipe_title": fav.recipe_title,
            "recipe_link": fav.recipe_link,
            "country": fav.country,
            "created_at": fav.created_at
          }     
        }
      end
   } 
  end
end