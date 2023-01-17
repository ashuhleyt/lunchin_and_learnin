require 'rails_helper'

RSpec.describe UnsplashService do 
  it 'returns images for a given country', :vcr do 
    country = 'Spain'
    images = UnsplashService.retrieve_images(country)

    expect(images).to be_a(Hash)
    expect(images[:results]).to be_an(Array)

    images[:results].each do |image|
      expect(image).to have_key(:alt_description)
      expect(image).to have_key(:urls)
      expect(image[:urls]).to be_a(Hash)
      expect(image[:urls]).to have_key(:regular)
      expect(image[:urls][:regular]).to be_a(String)
    end
  end
end