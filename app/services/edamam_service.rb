class EdamamService 
  def self.conn 
    Faraday.new('https://api.edamam.com') do |f|
      f.params['type'] = 'public'
      f.params['app_id'] = ENV['edamam-id']
      f.params['app_key'] = ENV['edamam-key']
    end
  end

  def self.get_recipes_by_country(country)
    response = conn.get("/api/recipes/v2?q=#{country}")
    
    data = JSON.parse(response.body, symbolize_names: true)
  end
end