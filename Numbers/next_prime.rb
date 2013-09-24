def is_prime?(n)
  (2..Math.sqrt(n)).each do |divisor|
    if (n % divisor).zero? then
      return false
    end
  end
  return true
end


n = 0
loop do
  puts "Press 'enter' to print the next prime. Press 'q' to quit."
  print ":"
  input = gets.chomp
  break if input == 'q'

  loop do
    n += 1
    if is_prime?(n)
      puts "Prime: #{n}"
      break
    end
  end
end