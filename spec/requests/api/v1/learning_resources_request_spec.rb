require 'rails_helper'

RSpec.describe 'learning resources api request', :vcr do 
  it 'returns learning resources for the requested country' do 
    country = 'Japan'
    get "/api/v1/learning_resources?country=#{country}"

    resources = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
  end
end