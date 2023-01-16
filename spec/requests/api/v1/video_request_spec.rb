require 'rails_helper'

RSpec.describe 'YouTube API' do 
  it 'returns videos based on country given' do 
    country = 'Germany'
    get "/api/v1/learning_resources?country=#{country}"

    helpful_videos = JSON.parse(response.body, symbolize_names: true)
    
    expect(response).to be_successful

    expect(helpful_videos).to be_a(Hash)
    expect(helpful_videos).to have_key(:data)
    expect(helpful_videos[:data]).to be_a(Hash)
    expect(helpful_videos[:data]).to have_key(:id)
    expect(helpful_videos[:data][:id]).to eq("null")
    expect(helpful_videos[:data]).to have_key(:type)
    expect(helpful_videos[:data][:type]).to eq("learning_resource")
    expect(helpful_videos[:data]).to have_key(:attributes)
    expect(helpful_videos[:data][:attributes]).to have_key(:country)
    expect(helpful_videos[:data][:attributes][:country]).to eq("Germany")
    expect(helpful_videos[:data][:attributes][:video]).to have_key(:title)
    expect(helpful_videos[:data][:attributes][:video][:title]).to eq("A Super Quick History of Germany")
    expect(helpful_videos[:data][:attributes][:video]).to have_key(:youtube_video_id)
    expect(helpful_videos[:data][:attributes][:video][:youtube_video_id]).to eq("7sxora2imC0")
    expect(helpful_videos[:data][:attributes][:images][0]).to have_key(:alt_tag)
    expect(helpful_videos[:data][:attributes][:images][0][:alt_tag]).to eq("white and pink petaled flowers on metal fence near concrete houses and tower at daytime")
    expect(helpful_videos[:data][:attributes][:images][0][:url]).to eq("https://images.unsplash.com/photo-1467269204594-9661b134dd2b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzOTk0MTl8MHwxfHNlYXJjaHwxfHxHZXJtYW55fGVufDB8fHx8MTY3MzgyMDk3NA&ixlib=rb-4.0.3&q=80&w=1080")
  end
end