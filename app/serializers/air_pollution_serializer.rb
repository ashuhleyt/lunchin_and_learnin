class AirPollutionSerializer 
  def self.serialize(aqi)
    {
    "data": {
        "id": "null",
        "type": "air_quality",
        "attributes": {
            "aqi": airquality.aqi,
            "datetime": airquality.datetime,
            "readable_aqi": airquality.readable
                }
          }
    }
  end
end