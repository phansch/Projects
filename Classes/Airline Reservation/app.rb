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

  loop do
    puts "Press 'q' to quit"
    puts "Select a flight: "
    flights.each_with_index { |val, index| puts "#{index}: #{val.name}" }

    print ':'
    choice = gets.chomp
    break if choice == 'q'
    flight = flights[choice.to_i]

    puts "Seats available: "
    flight.to_s

    puts "Pick a class: "
    puts "1: Economy"
    puts "2: Business"
    puts "3: First Class"

    print ':'
    choice = gets.chomp

    case choice
    when '1'
      flight.book(1)
      puts "Seat on flight #{flight.name} booked!"
    when '2'
      flight.book(2)
      puts "Seat on flight #{flight.name} booked!"
    when '3'
      flight.book(3)
      puts "Seat on flight #{flight.name} booked!"
    when 'q'
      break
    else
      puts "No such class"
    end
    puts "---------"
  end
end

main