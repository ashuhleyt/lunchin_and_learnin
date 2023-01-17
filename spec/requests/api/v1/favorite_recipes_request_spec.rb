require 'rails_helper'

RSpec.describe "Favorite Recipes" do 
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
  end
end