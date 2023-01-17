require 'rails_helper'

RSpec.describe LearningResourcesFacade do 
  describe 'class methods' do 
    describe '.get_images' do 
      it 'returns images associated with given country', :vcr do 
        country = 'Spain'
        image = LearningResourcesFacade.get_images(country)
    
        expect(image).to be_an(Array)
        expect(image.count).to eq(10)
        expect(image[0]).to be_an(Image)
      end
    end

    describe '.get_videos' do 
      it 'returns a video associated with the given country happy path', :vcr do 
        country = 'Spain'
        video = LearningResourcesFacade.get_videos(country)
        # require 'pry'; binding.pry
        expect(video.title).to eq("A Super Quick History of Portugal")
        expect(video.video_id).to eq("nQh6V8adGXw")
      end
    end
    
    describe '.get_learning_resources' do 
      it 'returns a new instance of a learning resource', :vcr do 
        country = 'Spain'
        image = LearningResourcesFacade.get_images(country)
        video = LearningResourcesFacade.get_videos(country)

        learning_resource = LearningResourcesFacade.get_learning_resources(country)
   
        expect(learning_resource).to be_a(LearningResource)
      end
    end
  end
end