require 'rails_helper'

RSpec.describe AirPollution do 
  it 'exists with attributes' do 
    data = {
    "coord": {
        "lon": 77,
        "lat": 22
    },
    "list": [
        {
            "main": {
                "aqi": 5
            },
            "components": {
                "co": 393.87,
                "no": 0,
                "no2": 3,
                "o3": 67.95,
                "so2": 2.77,
                "pm2_5": 33.3,
                "pm10": 38.05,
                "nh3": 11.91
            },
            "dt": 1668532338
        }
    ]
}

  aqi = AirPollution.new(data)
  
  expect(aqi).to be_a(AirPollution)
  expect(aqi.aqi).to eq(5)
  expect(aqi.datetime).to be_an(Integer)
  expect(aqi.readable).to eq("Very Poor")
  end

  it 'exists with attributes' do 
    data = {
    "coord": {
        "lon": 77,
        "lat": 22
    },
    "list": [
        {
            "main": {
                "aqi": 1
            },
            "components": {
                "co": 393.87,
                "no": 0,
                "no2": 3,
                "o3": 67.95,
                "so2": 2.77,
                "pm2_5": 33.3,
                "pm10": 38.05,
                "nh3": 11.91
            },
            "dt": 1668532338
        }
    ]
}

  aqi = AirPollution.new(data)
  
  expect(aqi).to be_a(AirPollution)
  expect(aqi.aqi).to eq(1)
  expect(aqi.datetime).to be_an(Integer)
  expect(aqi.readable).to eq("Good")
  end

  it 'exists with attributes' do 
    data = {
    "coord": {
        "lon": 77,
        "lat": 22
    },
    "list": [
        {
            "main": {
                "aqi": 2
            },
            "components": {
                "co": 393.87,
                "no": 0,
                "no2": 3,
                "o3": 67.95,
                "so2": 2.77,
                "pm2_5": 33.3,
                "pm10": 38.05,
                "nh3": 11.91
            },
            "dt": 1668532338
        }
    ]
}

  aqi = AirPollution.new(data)
  
  expect(aqi).to be_a(AirPollution)
  expect(aqi.aqi).to eq(2)
  expect(aqi.datetime).to be_an(Integer)
  expect(aqi.readable).to eq("Meh")
  end

  it 'exists with attributes' do 
    data = {
    "coord": {
        "lon": 77,
        "lat": 22
    },
    "list": [
        {
            "main": {
                "aqi": 3
            },
            "components": {
                "co": 393.87,
                "no": 0,
                "no2": 3,
                "o3": 67.95,
                "so2": 2.77,
                "pm2_5": 33.3,
                "pm10": 38.05,
                "nh3": 11.91
            },
            "dt": 1668532338
        }
    ]
}

  aqi = AirPollution.new(data)
  
  expect(aqi).to be_a(AirPollution)
  expect(aqi.aqi).to eq(3)
  expect(aqi.datetime).to be_an(Integer)
  expect(aqi.readable).to eq("Could Be Better")
  end

  it 'exists with attributes' do 
    data = {
    "coord": {
        "lon": 77,
        "lat": 22
    },
    "list": [
        {
            "main": {
                "aqi": 4
            },
            "components": {
                "co": 393.87,
                "no": 0,
                "no2": 3,
                "o3": 67.95,
                "so2": 2.77,
                "pm2_5": 33.3,
                "pm10": 38.05,
                "nh3": 11.91
            },
            "dt": 1668532338
        }
    ]
}

  aqi = AirPollution.new(data)
  
  expect(aqi).to be_a(AirPollution)
  expect(aqi.aqi).to eq(4)
  expect(aqi.datetime).to be_an(Integer)
  expect(aqi.readable).to eq("Pretty Bad")
  end
end