require 'rails_helper'

RSpec.describe "Favorite Recipes", :vcr do 
  it 'sends a successful response message upon adding a favorite' do 
    user = User.create!(name: "Smash", email: "bingbong@gmail.com", api_key: "123456789123456789")
    params = {
        api_key: "123456789123456789",
        country: "Spain",
        recipe_link: "https://www.SpanishRecipes.com",
        recipe_title: "Your Moms Paella Could Never"
      }

      headers = { 'CONTENT_TYPE' => 'application/json' }
      
      post '/api/v1/favorites', headers: headers, params: JSON.generate(params)
      expect(response).to be_successful
      expect(response).to have_http_status(201)
  end

  it 'sends an invalid api key error message if api key is invalid' do 
    user = User.create!(name: "Smash", email: "bingbong@gmail.com", api_key: "123456789123456789")
    params = {
      api_key: "69696969", 
      country: "Spain",
      recipe_link: "https://www.SpanishRecipes.com",
      recipe_title: "Your Moms Paella Could Never"
    }
    
    headers = { 'CONTENT_TYPE' => 'application/json' }
    
    post '/api/v1/favorites', headers: headers, params: JSON.generate(params)

    expect(response).to_not be_successful
    expect(response).to have_http_status(400)
  end

  it 'returns all of a users favorites' do 
    user1 = User.create!(name: "Smash", email: "bingbong@gmail.com", api_key: "123456789123456789")
    user2 = User.create!(name: "DK Metcalf", email: "beastmode@gmail.com", api_key: "987694204567654")
    
    recipe1 = Favorite.create!(country: "Spain", recipe_link: "https://www.SpanishRecipes.com", recipe_title: "Your Moms Paella Could Never", user_id: user1.id)
    recipe2 = Favorite.create!(country: "Spain", recipe_link: "https://www.SpanishRecipes.com", recipe_title: "El Pollo Loco", user_id: user1.id)
    recipe3 = Favorite.create!(country: "Spain", recipe_link: "https://www.SpanishRecipes.com", recipe_title: "Alexs Enchiladas", user_id: user1.id)
    recipe4 = Favorite.create!(country: "Spain", recipe_link: "https://www.SpanishRecipes.com", recipe_title: "Chilaquilles de la Cortez", user_id: user1.id)
    recipe5 = Favorite.create!(country: "Spain", recipe_link: "https://www.SpanishRecipes.com", recipe_title: "Huevos Rancheros", user_id: user2.id)
    recipe6 = Favorite.create!(country: "Spain", recipe_link: "https://www.SpanishRecipes.com", recipe_title: "Patatas Bravas ", user_id: user2.id)


    request_body = {
      "api_key": "#{user1.api_key}"
      }

    headers = { 'CONTENT_TYPE' => 'application/json' }
    
    get '/api/v1/favorites', headers: headers, params: request_body

    favs = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(response.status).to eq(201)

    expect(favs).to be_a(Hash)
    expect(favs[:data].count).to eq(4)
    expect(favs[:data]).to_not include(recipe5)
    expect(favs[:data]).to_not include(recipe6)

    favs[:data].each do |favorite|
      expect(favorite[:attributes].keys).to eq([:recipe_title, :recipe_link, :country, :created_at])
      expect(favorite[:id]).to be_a Integer
      expect(favorite[:type]).to eq("favorite")
      expect(favorite[:attributes]).to be_a Hash
    end
  end

  it 'returns a 401 status error code with invalid api key' do 
    user1 = User.create!(name: "Smash", email: "bingbong@gmail.com", api_key: "123456789123456789")
    user2 = User.create!(name: "DK Metcalf", email: "beastmode@gmail.com", api_key: "987694204567654")
    
    recipe1 = Favorite.create!(country: "Spain", recipe_link: "https://www.SpanishRecipes.com", recipe_title: "Your Moms Paella Could Never", user_id: user1.id)
    recipe2 = Favorite.create!(country: "Spain", recipe_link: "https://www.SpanishRecipes.com", recipe_title: "El Pollo Loco", user_id: user1.id)
    recipe3 = Favorite.create!(country: "Spain", recipe_link: "https://www.SpanishRecipes.com", recipe_title: "Alexs Enchiladas", user_id: user1.id)
    recipe4 = Favorite.create!(country: "Spain", recipe_link: "https://www.SpanishRecipes.com", recipe_title: "Chilaquilles de la Cortez", user_id: user1.id)
    recipe5 = Favorite.create!(country: "Spain", recipe_link: "https://www.SpanishRecipes.com", recipe_title: "Huevos Rancheros", user_id: user2.id)
    recipe6 = Favorite.create!(country: "Spain", recipe_link: "https://www.SpanishRecipes.com", recipe_title: "Patatas Bravas ", user_id: user2.id)


    request_body = {
      "api_key": "#2323"
      }

    headers = { 'CONTENT_TYPE' => 'application/json' }
    
    get '/api/v1/favorites', headers: headers, params: request_body

    favs = JSON.parse(response.body, symbolize_names: true)

    expect(response).to_not be_successful
    expect(response.status).to eq(400)
  end
end