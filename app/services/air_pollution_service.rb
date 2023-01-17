class AirPollutionService 
  def self.conn
    Faraday.new("http://api.openweathermap.org") do |f|
      f.params['appid'] = ENV['pollution-key']
    end
  end

  def self.air_quality_for_country(lat, long)
    
    response = conn.get("/data/2.5/air_pollution?lat=#{lat}&lon=#{long}")

    parse(response)
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
