require 'geocoder'
require 'open-uri'
require 'socket'
require 'json'
require 'net/http'


def get_ip
  # turn off reverse DNS resolution temporarily
  orig, Socket.do_not_reverse_lookup = Socket.do_not_reverse_lookup, true  
 
  UDPSocket.open do |s|
    s.connect '64.233.187.99', 1
    s.addr.last
  end
  ensure
    Socket.do_not_reverse_lookup = orig
end

def get_location(ip_address)
  results = Geocoder.search(ip_address)
  location = { lat: results[0].latitude, lon: results[0].longitude }
end

# Retrieve weatherdata by geo coordinates
def get_weatherdata(location)
  uri = URI("http://api.openweathermap.org/data/2.5/weather?lat=#{location[:lat]}&lon=#{location[:lon]}&units=metric")
  response = Net::HTTP.get(uri)
  JSON.parse(response)
end

def main
  ip_address = get_ip
  location = get_location(ip_address)
  weatherdata = get_weatherdata(location)

  puts "This weather status is obviously not very accurate since it uses your IP address to determine your location."
  puts "Anyway here's the weather for #{ip_address}."
  puts "----"
  puts "description: #{weatherdata["weather"][0]["description"]}"
  puts "temp: #{weatherdata["main"]["temp"]}"
  puts "humidity: #{weatherdata["main"]["humidity"]}%"
end

main