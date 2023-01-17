class AirPollutionFacade 
  def self.aqi_for_country(country)
    lat_long = CountryFacade.search_country_lat_long(country)
    current_aqi = AirPollutionService.air_quality_for_country(country) #need to return latlong! 
   
    # create new air pollution 
  end
end