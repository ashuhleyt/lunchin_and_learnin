class CountryFacade 
  def self.names 
    result = CountryService.get_countries
    result.map do |country|
      country[:name][:common] 
      # require 'pry'; binding.pry
    end
  end

  def self.valid_country?(country)
    names.include?(country)
  end

  def self.random
    names.sample
  end

  def self.search_country_lat_long(search_country)
    result = CountryService.get_countries
    # require 'pry'; binding.pry
    coords = result.find do |country|
      country[:name][:common] == search_country
    end
    coords[:latlng]
  end
end