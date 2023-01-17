class LearningResourcesFacade
  def self.get_images(country)
    image_info = UnsplashService.retrieve_images(country)
    image_info[:results].first(10).map do |image|
      Image.new(image_info)
    end
  end

  def self.get_videos(country)
    video_info = VideoService.retrieve_videos(country)
    video = video_info[:items][0]
    Video.new(video)
  end 
  
  def self.get_learning_resources(country)
    image = self.get_images(country)
    video = self.get_videos(country)
    LearningResource.new(image, video)
  end
end
