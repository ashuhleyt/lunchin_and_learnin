class VideoService 
  def self.conn
    Faraday.new("https://youtube.googleapis.com") do |f|
      f.params['key'] = ENV['google-key']
      f.params['part'] = 'snippet'
      f.params['channelId'] = 'UCluQ5yInbeAkkeCndNnUhpw'
    end
  end

  def self.retrieve_videos(country)
    response = conn.get("/youtube/v3/search?q=#{country}")

    data = JSON.parse(response.body, symbolize_names: true)
  end
end