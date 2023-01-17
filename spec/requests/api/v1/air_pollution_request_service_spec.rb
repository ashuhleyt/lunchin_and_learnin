require 'rails_helper'

describe 'Air Quality API' do 
  it 'returns status as successful with given country params' do 
    get '/api/v1/air_quality?country=India'
    
    aqi = JSON.parse(response.body, symbolize_names: true)
    expect(response).to be_successful
    
  end
end