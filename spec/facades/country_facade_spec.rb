require 'rails_helper'

RSpec.describe CountryFacade do 
  describe 'class methods' do 
    describe '.names' do 
      it 'returns names of the countries', :vcr do 
        names = CountryFacade.names

        expect(names).to be_an(Array)
        expect(names.count).to eq(250)
      end
    end
    
    describe '.valid_country? happy path' do 
      it 'returns true if the country name given is valid', :vcr do 
        country = 'Spain'
        valid = CountryFacade.valid_country?(country)
        expect(valid).to eq(true)
      end
    end

    describe '.valid_country? sad path' do 
      it 'returns false if the country name given isnt valid', :vcr do 
        country = 'Chicken'
        valid = CountryFacade.valid_country?(country)

        expect(valid).to eq(false)
      end
    end

    describe '.random' do #how to test the logic here?
      it 'returns a random country name if no name is given', :vcr do 
        random_country = CountryFacade.random
    
        expect(random_country).to be_a(String)
      end
    end
  end
end