require 'rails_helper'

RSpec.describe RecipeFacade do 
  describe 'class methods' do 
    describe '.get_all_recipes' do 
      it 'returns all the recipes for a given country' do
        country = 'Spain'
        recipes = RecipeFacade.get_all_recipes(country)

        expect(recipes).to be_an(Array)
        expect(recipes.count).to eq(20)
        expect(recipes[0].country).to eq("Spain")
        expect(recipes[0].title).to eq("Sketch of Spain recipes")
        expect(recipes[0].url).to eq("http://www.edamam.com/ontologies/edamam.owl#recipe_108af50c34daa60cad810935f3328915")
      end
    end
  end
end