require 'rails_helper'

RSpec.describe 'Recipes API' do 
  it 'sends list of recipes for a given country', :vcr do 
    country = 'Spain'
    get "/api/v1/recipes?country=#{country}"

    recipes = JSON.parse(response.body, symbolize_names: true)
    expect(response).to be_successful

    expect(recipes).to be_a(Hash)
    recipes[:data].each do |recipe|
      expect(recipe).to have_key(:id)
      expect(recipe[:id]).to eq('null')
      expect(recipe).to have_key(:type)
      expect(recipe[:type]).to eq('recipe')
      expect(recipe).to have_key(:attributes)
      expect(recipe[:attributes]).to be_a(Hash)
      expect(recipe[:attributes]).to have_key(:title)
      expect(recipe[:attributes][:title]).to be_a(String)
      expect(recipe[:attributes]).to have_key(:url)
      expect(recipe[:attributes][:url]).to be_a(String)
      expect(recipe[:attributes]).to have_key(:country)
      expect(recipe[:attributes][:country]).to be_a(String)
      expect(recipe[:attributes]).to have_key(:image)
      expect(recipe[:attributes][:image]).to be_a(String)

      expect(recipe[:attributes]).to_not have_key(:count)
      expect(recipe[:attributes]).to_not have_key(:label)
      expect(recipe[:attributes]).to_not have_key(:uri)
    end
  end

  it 'returns a list of recipes from random country if a user does not give a country', :vcr do 
    new_country = CountryFacade.random
    get "/api/v1/recipes?country=#{new_country}"

    recipes = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful

    expect(recipes).to be_a(Hash)

    recipes[:data].each do |recipe|
      expect(recipe).to have_key(:id)
      expect(recipe[:id]).to eq('null')
      expect(recipe).to have_key(:type)
      expect(recipe[:type]).to eq('recipe')
      expect(recipe).to have_key(:attributes)
      expect(recipe[:attributes]).to be_a(Hash)
      expect(recipe[:attributes]).to have_key(:title)
      expect(recipe[:attributes][:title]).to be_a(String)
      expect(recipe[:attributes]).to have_key(:url)
      expect(recipe[:attributes][:url]).to be_a(String)
      expect(recipe[:attributes]).to have_key(:country)
      expect(recipe[:attributes][:country]).to be_a(String)
      expect(recipe[:attributes]).to have_key(:image)
      expect(recipe[:attributes][:image]).to be_a(String)

      expect(recipe[:attributes]).to_not have_key(:count)
      expect(recipe[:attributes]).to_not have_key(:label)
      expect(recipe[:attributes]).to_not have_key(:uri)
    end 
  end
end