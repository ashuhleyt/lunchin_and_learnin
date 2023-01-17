class LearningResourcesFacade
  def self.get_images(country)
    image_info = UnsplashService.retrieve_images(country)
    if image_info[:results].count > 0
# require 'pry'; binding.pry
      image_info[:results].map do |image|
        Image.new(image_info)
      end
    else 
      []
    end
  end

  def self.get_videos(country)
    video_info = VideoService.retrieve_videos(country)
    video = video_info[:items][0]
    if videos_from_valid_country?(video, country)
      Video.new(video)
    else 
      {}
    end 
  end 
  
  def self.videos_from_valid_country?(video, country)
    video[:snippet][:title].include?(country.titleize)
  end
  
  def self.get_learning_resources(country)
    image = self.get_images(country)
    video = self.get_videos(country)
    LearningResource.new(image, video)
  end
end
