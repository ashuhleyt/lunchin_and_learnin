class ErrorSerializer
  def self.taken_email
    {
      "message": "New User Was Not Created", 
      "error": "Email is already in use"
    }
  end

  def self.invalid_api_key
    {
      "message": 'Favorite Recipe Was Not Added',
      "error": 'INVALID API KEY'
    }
  end

  def self.favorite_not_found
    {
      "message": 'No Favorites To Be Found',
      "error": 'INVALID API KEY'
    }
  end
end