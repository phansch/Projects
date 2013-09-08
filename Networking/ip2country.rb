# Find the country that the IP is registered in
#
require 'socket'
require 'geocoder'

#from https://coderrr.wordpress.com/2008/05/28/get-your-local-ip-address/
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

results = Geocoder.search(get_ip)
puts results[0].country