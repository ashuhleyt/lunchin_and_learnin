require 'rails_helper'

RSpec.describe EdamamService do 
  it 'returns data from a specific country', :vcr do 
    country = 'Spain'
    recipes = EdamamService.get_recipes_by_country(country)
    expect(recipes).to be_a(Hash)

    expect(recipes[:hits]).to be_an(Array)

    recipes[:hits].each do |recipe|
      expect(recipe[:recipe]).to have_key(:uri)
      expect(recipe[:recipe][:uri]).to be_a(String)
      expect(recipe[:recipe]).to have_key(:label)
      expect(recipe[:recipe][:label]).to be_a(String)
      expect(recipe[:recipe]).to have_key(:image)
      expect(recipe[:recipe][:image]).to be_a(String)
    end
  end
end