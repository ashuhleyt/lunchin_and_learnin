require 'rails_helper'

RSpec.describe VideoService do 
  it 'returns helpful videos for given country', :vcr do 
    country = 'Spain'
    videos = VideoService.retrieve_videos(country)
    expect(videos).to be_a(Hash)
    expect(videos[:items]).to be_an(Array)
    expect(videos[:items][0]).to have_key(:snippet)
    expect(videos[:items][0][:snippet]).to be_a(Hash)
    expect(videos[:items][0][:snippet]).to have_key(:title)
    expect(videos[:items][0][:snippet][:title]).to be_a(String)
    expect(videos[:items][0]).to have_key(:id)
    expect(videos[:items][0][:id]).to be_a(Hash)
    expect(videos[:items][0][:id]).to have_key(:videoId)
    expect(videos[:items][0][:id][:videoId]).to be_a(String)

    expect(videos[:items][0]).to_not have_key(:pixel)
  end
end