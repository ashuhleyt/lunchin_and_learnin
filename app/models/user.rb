require 'securerandom'
class User < ApplicationRecord 

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :api_key, presence: true, allow_nil: true
  
  
end