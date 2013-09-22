current_value = 0
puts "Basic calclator. Press q at any time to quit. Enter an integer number first:"
print ":"
input = gets.chomp
exit if input == 'q'
current_value = input.to_i
loop do
  puts "#{current_value} on stack. Now choose an operation:"
  puts "Enter + for addition, - for subtraction, * for multiplication and / for division."
  print ":"
  op = gets.chomp
  break if op == 'q'
  puts "Okay, now enter a value to modify the current value."
  print ":"
  mod = gets.chomp
  break if mod == 'q'
  case op
  when '+'
    current_value += mod.to_i
  when '-'
    current_value -= mod.to_i
  when '*'
    current_value *= mod.to_i
  when '/'
    current_value /= mod.to_i
  end
end
