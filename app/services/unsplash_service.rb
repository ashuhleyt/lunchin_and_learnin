class UnsplashService
  def self.conn
     Faraday.new('https://api.unsplash.com') do |f|
      f.params['client_id'] = ENV['unsplash-key']
    end
  end

  def self.retrieve_images(country)
    response = conn.get("/search/photos?query=#{country}")
    
    data = JSON.parse(response.body, symbolize_names: true)
  end
end