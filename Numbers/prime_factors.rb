def is_prime?(n)
  (2..Math.sqrt(n)).each do |divisor|
    if (n % divisor).zero? then
      return false
    end
  end
  return true
end

loop do
  puts "Enter a number to find the prime factors of/Press q to exit."
  print ":"
  input = gets.chomp
  factors = Array.new

  break if input == 'q'

  input = input.to_i
  (2..input+1).each { |e|
    while (input % e).zero? do
      if is_prime?(e)
        factors.push(e)
        input /= e
      end
    end
  }

  print factors
end