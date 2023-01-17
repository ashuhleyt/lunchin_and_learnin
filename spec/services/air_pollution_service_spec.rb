require 'rails_helper'

RSpec.describe AirPollutionService do 
  it 'returns air quality from given country', :vcr do 
    latlong = CountryFacade.search_country_lat_long("India")
    aqi = AirPollutionService.air_quality_for_country(latlong[0], latlong[1])
    expect(aqi).to be_a(Hash)
    
    expect(aqi).to have_key(:coord)
    expect(aqi[:coord]).to have_key(:lon)
    expect(aqi[:coord]).to have_key(:lat)
    expect(aqi[:coord][:lon]).to eq(77)
    expect(aqi[:coord][:lat]).to eq(20)
    expect(aqi).to have_key(:list)
    expect(aqi[:list]).to be_an(Array)
    expect(aqi[:list][0]).to have_key(:main)
    expect(aqi[:list][0][:main]).to have_key(:aqi)
    expect(aqi[:list][0][:main][:aqi]).to eq(5)
    expect(aqi[:list][0]).to have_key(:components)
    expect(aqi[:list][0][:dt]).to be_an(Integer) #always changing, duh
  end
end