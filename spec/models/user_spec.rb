require 'rails_helper'

RSpec.describe User do 
  it { should have_many(:favorites) }
  
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:api_key).allow_nil }
  it { should validate_uniqueness_of(:email) }
end