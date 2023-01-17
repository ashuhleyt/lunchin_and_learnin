FactoryBot.define do 
  factory :user do 
    name { Faker::Movies::HarryPotter.character }
    email { Faker::Internet.email }
  end
end