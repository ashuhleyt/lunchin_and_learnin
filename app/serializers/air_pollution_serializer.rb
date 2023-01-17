class AirPollutionSerializer 
  include JSONAPI::Serializer 
  attributes :aqi, :datetime, :readable
end