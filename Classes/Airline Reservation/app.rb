require_relative 'Flight'
require_relative 'Seat'

# Creating some dummy flights
def create_dummy_flights
  flights = Array.new

  seats = [
    Array.new(50) { SeatEconomy.new },
    Array.new(30) { SeatBusiness.new },
    Array.new(10) { SeatFirst.new }
  ]

  flights.push(Flight.new("BER144", seats))

  seats = [
    Array.new(70) { SeatEconomy.new },
    Array.new(10) { SeatBusiness.new },
    Array.new(6) { SeatFirst.new }
  ]

  flights.push(Flight.new("NY684", seats))

  seats = [
    Array.new(30) { SeatEconomy.new },
    Array.new(70) { SeatBusiness.new },
    Array.new(40) { SeatFirst.new }
  ]

  flights.push(Flight.new("SYD23", seats))

  flights
end

def main
  flights = create_dummy_flights

  puts "Pick a flight: "
  flights.each_with_index { |val, index| puts "#{index}: #{val.name}" }

  id = gets.chomp.to_i
  flight = flights[id]

  puts "Seats available: "
  flight.to_s

  puts "Pick a class: "
  puts "1. Economy"
  puts "2. Business"
  puts "3. First Class"

  choice = gets.chomp.to_i

  case choice
  when 1
    flight.book(1)
  when 2
    flight.book(2)
  when 3
    flight.book(3)
  end
end

main