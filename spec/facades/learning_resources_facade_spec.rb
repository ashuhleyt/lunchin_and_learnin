require 'rails_helper'

RSpec.describe LearningResourcesFacade do 
  describe 'class methods' do 
    describe '.get_images' do 
      it 'returns images associated with given country' do 
        country = 'Spain'
        image = LearningResourcesFacade.get_images(country)
        # require 'pry'; binding.pry
        expect(image).to be_an(Array)
        expect(image.count).to eq(10)
        expect(image[0]).to be_an(Image)
        expect(image[0].url).to eq("https://images.unsplash.com/photo-1561369408-1e91d37fd2c5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzOTk0MTl8MHwxfHNlYXJjaHwxfHxTcGFpbnxlbnwwfHx8fDE2NzM5MDQwNjU&ixlib=rb-4.0.3&q=80&w=1080")
      end
    end

    describe '.get_videos' do 
      it 'returns a video associated with the given country happy path' do 
        country = 'Spain'
        video = LearningResourcesFacade.get_videos(country)

        expect(video).to be_a(Hash)
      end
    end
    
    describe '.get_learning_resources' do 
      it 'returns a new instance of a learning resource' do 
        country = 'Spain'
        image = LearningResourcesFacade.get_images(country)
        video = LearningResourcesFacade.get_videos(country)

        learning_resource = LearningResourcesFacade.get_learning_resources(country)
   
        expect(learning_resource).to be_a(LearningResource)
      end
    end
  end
end