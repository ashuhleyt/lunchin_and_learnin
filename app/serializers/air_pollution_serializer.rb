class AirPollutionSerializer 
  def self.serialize(aqi)
    {
    "data": {
        "id": "null",
        "type": "air_quality",
        "attributes": {
            "aqi": airpollution.aqi,
            "datetime": airpollution.datetime,
            "readable_aqi": airpollution.readable
                }
          }
    }
  end
end