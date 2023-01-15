require 'rails_helper'

RSpec.describe Image do 
  it 'exists' do 
    data = {
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
    image = Image.new(data)

    expect(image).to be_a(Image)
    expect(image.alttag).to eq("Manarola, Italy")
    expect(image.url).to eq("https://images.unsplash.com/photo-1516483638261-f4dbaf036963?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNzk5ODl8MHwxfHNlYXJjaHwxfHxpdGFseXxlbnwwfHx8fDE2NjgyMDk2NzI&ixlib=rb-4.0.3&q=80&w=1080",)
  end
end