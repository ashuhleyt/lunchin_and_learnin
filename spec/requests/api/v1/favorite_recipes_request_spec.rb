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
    
    recipe1 = create(:favorite, user_id: user2.id)
    recipe2 = create(:favorite, user_id: user2.id)
    recipe3 = create(:favorite, user_id: user2.id)
    recipe4 = create(:favorite, user_id: user2.id)

    request_body = {
      "api_key": "#{user1.api_key}"
      }

      headers = { 'CONTENT_TYPE' => 'application/json' }
      
      get '/api/v1/favorites', headers: headers, params: request_body
  end
end