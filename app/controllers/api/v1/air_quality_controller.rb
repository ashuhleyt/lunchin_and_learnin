class Api::V1::AirQualityController < ApplicationController 
  def index 
    country = params[:country] ||= CountryFacade.random
    if CountryFacade.valid_country?(country)
      require 'pry'; binding.pry
      render json: AirPollutionSerializer.new
    end
  end
end