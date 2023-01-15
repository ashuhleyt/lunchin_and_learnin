class CountryFacade 
  def self.names 
    result = CountryService.get_countries
    result.map do |country|
      country[:name][:common] 
    end
  end

  def self.valid_country?(country)
    names.include?(country.titleize)
  end

  def self.random
    names.sample
  end
end