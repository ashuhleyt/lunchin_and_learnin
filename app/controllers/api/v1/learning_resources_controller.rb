class Api::V1::LearningResourcesController < ApplicationController 
  def index 
    country = params[:country] || CountryFacade.random_country
    if CountryFacade.valid_country?(country)
      resources = LearningResourcesFacade.get_learning_resources(country)
      render json: LearningResourceSerializer.serialize(resources, country)
    end
  end
end