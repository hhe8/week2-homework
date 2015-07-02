load('google_weather.rb')
cities=["Shanghai","Beijing","Chicago","Madison","Sydney","Singapore"]
cities =["Chicago"]
i = 1
cities.each do |city|
  weather = GoogleWeather.new("#{city}")
  puts "#{i}.#{city}: #{weather.data["temp"]}"
  i += 1
end
