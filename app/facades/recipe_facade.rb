class RecipeFacade
  def self.get_all_recipes(country)
    data = EdamamService.get_recipes_by_country(country)
    recipes = data[:hits]
    recipes.map do |recipe|
      Recipe.new(recipe, country)
    end
  end
end