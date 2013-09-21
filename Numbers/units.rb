def meter2foot(value)
  value * 3.28084
end

def foot2meter(value)
  value * 0.3048
end

def celsius2kelvin(value)
  value + 273.15
end

def kelvin2celsius(value)
  value - 273.15
end

def print_instructions
  puts "# Instructions #"
  puts "1: Meter to Foot"
  puts "2: Foot to Meter"
  puts "3: Celsius to Kelvin"
  puts "4: Kelvin to Celsius"
  puts "q: quit"
  puts "h: This help menu"
end

print_instructions
loop do
  print ":"
  input = gets.chomp

  case input

  when '1'
    print "Enter a length in meters: "
    n = gets.chomp.to_f
    puts "In foot: ", meter2foot(n)
  when '2'
    print "Enter a length in foot: "
    n = gets.chomp.to_f
    puts "In meter: ", foot2meter(n)
  when '3'
    print "Enter a temperature in celsius: "
    n = gets.chomp.to_f
    puts "In Kelvin: ", celsius2kelvin(n)
  when '4'
    print "Enter a temperature in kelvin: "
    n = gets.chomp.to_f
    puts "In Celsius: ", kelvin2celsius(n)
  when 'h'
    print_instructions
  when 'q'
    break
  end
  puts "------"
end