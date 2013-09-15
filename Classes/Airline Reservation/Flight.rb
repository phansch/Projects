class Flight
  attr_accessor :name
  attr_reader :seats, :free_economy, :free_business, :free_first
  # list of seats
  def initialize(name, seats)
    @name = name
    @seats = seats
    update_seats
  end

  def update_seats
    @free_economy = @seats.flatten
                            .select { |e|
                              e.booked == false and e.class == SeatEconomy
                            }
                            .length
    @free_business = @seats.flatten
                            .select { |e|
                              e.booked == false and e.class == SeatBusiness
                            }
                            .length
    @free_first = @seats.flatten
                            .select { |e|
                              e.booked == false and e.class == SeatFirst
                            }
                            .length
  end

  # print free seats
  def to_s
    update_seats
    puts "Free economy class seats: #{@free_economy}."
    puts "Free business class seats: #{@free_business}."
    puts "Free first class seats: #{@free_first}."
  end

  def book(seat)
    # check if seats available
    # use an existing seat object in @seats
    case seat
    when 1
      if @free_economy > 0
        free_seat = @seats.flatten.detect { |e|
          e.class == SeatEconomy and e.booked == false
        }
        free_seat.booked = true
        @free_economy -= 1
      end
    when 2
      if @free_business > 0
        free_seat = @seats.flatten.detect { |e|
          e.class == SeatBusiness and e.booked == false
        }
        free_seat.booked = true
        @free_business -= 1
      end
    when 3
      if @free_first > 0
        free_seat = @seats.flatten.detect { |e|
          e.class == SeatFirst and e.booked == false
        }
        free_seat.booked = true
        @free_first -= 1
      end
    end
  end
end