class LearningResource
  attr_reader :image, :video 

  def initialize(image, video)
    @image = image
    @video = video
  end
end