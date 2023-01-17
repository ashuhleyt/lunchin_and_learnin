require 'rails_helper'

RSpec.describe 'User endpoint' do 
  it 'creates a user' do 
    user = { name: Faker::Movies::HarryPotter.character, 
    email: Faker::Internet.email }

    headers = { 'CONTENT_TYPE' => 'application/json' }

    post '/api/v1/users', headers: headers, params: JSON.generate(user)
    
    new_user = User.last
    new_user = JSON.parse(response.body, symbolize_names: true) 
    
    expect(response).to be_successful
    expect(response).to have_http_status(201)
    
    expect(new_user).to be_a(Hash)
    expect(new_user.count).to eq(1)
    expect(new_user).to have_key(:data)
    expect(new_user[:data]).to have_key(:type)
    expect(new_user[:data][:type]).to be_a(String)
    expect(new_user[:data]).to have_key(:id)
    expect(new_user[:data][:id]).to be_an(Integer)
    expect(new_user[:data]).to have_key(:attributes)
    expect(new_user[:data][:attributes]).to be_a(Hash)
    expect(new_user[:data][:attributes]).to have_key(:name)
    expect(new_user[:data][:attributes][:name]).to be_a(String)
    expect(new_user[:data][:attributes]).to have_key(:email)
    expect(new_user[:data][:attributes][:email]).to be_a(String)
    expect(new_user[:data][:attributes]).to have_key(:api_key)
    expect(new_user[:data][:attributes][:api_key]).to be_a(String)
  end

  it 'doesnt create a user if email is already in use' do 
    user1 = create(:user, email: 'unoriginal@gmail.com')
    user_params = { name: Faker::Movies::HarryPotter.character, 
    email: 'unoriginal@gmail.com' }

    headers = { 'CONTENT_TYPE' => 'application/json' }

    post '/api/v1/users', headers: headers, params: JSON.generate(user_params)

    expect(response).to_not be_successful
  end
end