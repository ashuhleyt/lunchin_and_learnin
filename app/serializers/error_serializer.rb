class ErrorSerializer
  def self.taken_email
    {
      "message": "New User Was Not Created", 
      "error": "Email is already in use"
    }
  end
end