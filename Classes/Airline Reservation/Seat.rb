class Seat
  attr_accessor :booked
  attr_reader :price

  def initialize(price)
    @booked = false
    @price = price
  end

  def book
    @booked = true
  end
end

class SeatEconomy < Seat
  def initialize
    super("100")
  end
end

class SeatBusiness < Seat
  def initialize
    super("200")
  end
end

class SeatFirst < Seat
  def initialize
    super("300")
  end
end