require 'rails_helper'

RSpec.describe LearningResource do 
  it 'exists' do 
    image =  {
      "id": "rknrvCrfS1k",
      "created_at": "2018-01-20T21:28:57Z",
      "updated_at": "2022-11-11T09:03:01Z",
      "promoted_at": "2018-01-21T12:32:39Z",
      "width": 2675,
      "height": 4027,
      "color": "#c0d9f3",
      "blur_hash": "L,H2i[M_oge._4Rjofa}XnbcWAW=",
      "description": "The Cliffs of Cinque Terre",
      "alt_description": "Manarola, Italy",
      "urls": {
          "raw": "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?ixid=MnwzNzk5ODl8MHwxfHNlYXJjaHwxfHxpdGFseXxlbnwwfHx8fDE2NjgyMDk2NzI&ixlib=rb-4.0.3",
          "full": "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?crop=entropy&cs=tinysrgb&fm=jpg&ixid=MnwzNzk5ODl8MHwxfHNlYXJjaHwxfHxpdGFseXxlbnwwfHx8fDE2NjgyMDk2NzI&ixlib=rb-4.0.3&q=80",
          "regular": "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNzk5ODl8MHwxfHNlYXJjaHwxfHxpdGFseXxlbnwwfHx8fDE2NjgyMDk2NzI&ixlib=rb-4.0.3&q=80&w=1080",
          "small": "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNzk5ODl8MHwxfHNlYXJjaHwxfHxpdGFseXxlbnwwfHx8fDE2NjgyMDk2NzI&ixlib=rb-4.0.3&q=80&w=400",
          "thumb": "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNzk5ODl8MHwxfHNlYXJjaHwxfHxpdGFseXxlbnwwfHx8fDE2NjgyMDk2NzI&ixlib=rb-4.0.3&q=80&w=200",
          "small_s3": "https://s3.us-west-2.amazonaws.com/images.unsplash.com/small/photo-1516483638261-f4dbaf036963"
      }
    }
    video = {
      "kind": "youtube#searchResult",
      "etag": "fZrxYep3SpOL2SRZRaridMLJhZ8",
      "id": {
          "kind": "youtube#video",
          "videoId": "DD4wjwaFU-U"
      },
      "snippet": {
          "publishedAt": "2021-05-07T03:20:53Z",
          "channelId": "UCluQ5yInbeAkkeCndNnUhpw",
          "title": "A Super Quick History of Italy",
          "description": "Sources: \"A Brief History of Italy\" (2018) by Jeremy Black. Robinson Publishing, London. \"The Pursuit of Italy: A History of its ...",
          "thumbnails": {
              "default": {
                  "url": "https://i.ytimg.com/vi/DD4wjwaFU-U/default.jpg",
                  "width": 120,
                  "height": 90
              },
              "medium": {
                  "url": "https://i.ytimg.com/vi/DD4wjwaFU-U/mqdefault.jpg",
                  "width": 320,
                  "height": 180
              },
              "high": {
                  "url": "https://i.ytimg.com/vi/DD4wjwaFU-U/hqdefault.jpg",
                  "width": 480,
                  "height": 360
              }
          },
          "channelTitle": "Mr History",
          "liveBroadcastContent": "none",
          "publishTime": "2021-05-07T03:20:53Z"
      }
  }

  resource = LearningResource.new(image, video)

  expect(resource).to be_a(LearningResource)
  expect(resource.image).to eq(image)
  expect(resource.video).to eq(video)
  end
end