require 'rails_helper'

describe 'Air Quality API', :vcr do 
  it 'returns status as successful with given country params' do 
    get '/api/v1/air_quality?country=India'
    
    expect(response).to be_successful
  end
end