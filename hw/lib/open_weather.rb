# Require Ruby libraries
require 'open-uri'
require 'json'

class OpenWeather
# location setter and getter
  attr_accessor :location

  def initialize(location)
    @location = location
  end

  def data 
    # Convert to an HTTP-compatible querystring parameter
    location = URI.escape(@location)

    # Send an HTTP request to the OpenWeatherMap API
    json_data = open("http://api.openweathermap.org/data/2.5/weather?q=#{location}&units=imperial").read

    # Parse the response string into a Ruby data structure
    # (You will need to figure out what kind of structure it is)
    data = JSON.parse(json_data)
    #puts data['main'].keys
    #puts data['main']['temp']
    # 1. TO DO:
    # Replace the following 0 with an expression
    # that will extract the temperature
    # return temp
    #puts data["cod"].class
    puts data['main']
    if data["cod"] == "404"
      return "404 error"
    else
      return data['main']
    end
  end
# Output the temperature to the screen
#puts "It is currently #{temp.round(0)}\u00B0 outside."

end
