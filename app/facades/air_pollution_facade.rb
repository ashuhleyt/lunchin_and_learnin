class AirPollutionFacade 
  def self.aqi_for_country(country)
    lat_long = CountryFacade.search_country_lat_long(country)
    current_aqi = AirPollutionService.air_quality_for_country(lat_long[0], lat_long[1])  
    AirPollution.new(current_aqi)
  end
end