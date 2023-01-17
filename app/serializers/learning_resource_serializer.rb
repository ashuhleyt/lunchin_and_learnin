class LearningResourceSerializer
  def self.serialize(resources, country)
    {
    "data": {
      "id": "null",
      "type": "learning_resource",
      "attributes": {
        "country": country,
        "video": {
          "title": resources.video.title,
          "youtube_video_id": resources.video.video_id
        },
        "images": resources.image.map do |image|
          {
          "alt_tag": image.alttag,
          "url": image.url
          }
                  end 
        }
      }
    }
  end 
end