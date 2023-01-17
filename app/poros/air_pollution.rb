class AirPollution 
  attr_reader :aqi, 
              :datetime, 
              :readable 

  def initialize(data)
    # require 'pry'; binding.pry
    @aqi = data[:list][0][:main][:aqi]
    @datetime = data[:list][0][:dt]
    @readable = translator(@aqi)
  end

  def translator(aqi)
    if aqi == 1 
      return "Good"
    elsif aqi == 2 
      return "Meh"
    elsif aqi == 3 
      return "Could Be Better"
    elsif aqi == 4
      return "Pretty Bad"
    elsif aqi == 5 
      return "Very Poor"
    end
  end
end