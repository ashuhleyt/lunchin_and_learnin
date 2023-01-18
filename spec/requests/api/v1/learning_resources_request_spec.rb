require 'rails_helper'

RSpec.describe 'learning resources api request', :vcr do 
  it 'returns learning resources for the requested country' do 
    country = 'Japan'
    get "/api/v1/learning_resources?country=#{country}"

    resources = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(resources).to be_a(Hash)
    expect(resources).to have_key(:data)
    expect(resources[:data]).to have_key(:id)
    expect(resources[:data]).to have_key(:type)
    expect(resources[:data][:type]).to eq("learning_resource")
    expect(resources[:data][:id]).to eq("null")
    expect(resources[:data]).to_not have_key(:country)
    expect(resources[:data]).to have_key(:attributes)
    expect(resources[:data][:attributes]).to have_key(:country)
    expect(resources[:data][:attributes]).to_not have_key(:alt_tag)
  end 
end