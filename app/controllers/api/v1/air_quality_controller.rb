class Api::V1::AirQualityController < ApplicationController 
  def index 
    country = params[:country]
    if CountryFacade.valid_country?(country)
      # require 'pry'; binding.pry
      render json: AirPollutionSerializer.new(AirPollutionFacade.aqi_for_country(country))
    end
  end
end