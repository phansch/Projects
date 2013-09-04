require 'bigdecimal'

# from http://rosettacode.org/wiki/Factorial#Ruby
def fac(n)
  if n == 0 then return 1
  else
    (1..n).reduce(:*)
  end
end

# Alogrithm: http://pi314.net/eng/newton.php (Sequence 1)
# This does not allow to specify the length of the output
def pi_calc(iterations)
  zero = BigDecimal.new("0")
  one = BigDecimal.new("1")
  two = BigDecimal.new("2")
  three = BigDecimal.new("3")
  four = BigDecimal.new("4")
  six = BigDecimal.new("6")

  pi = zero
  numerator = zero
  denom = zero


  (0..iterations).each { |i| 

    numerator = fac(two * i)
    denom = two**(four * i + one) * (fac(i)**two) * (two*i+one)

    pi += numerator / denom
    
  }

  six * pi
end

puts pi_calc(10)