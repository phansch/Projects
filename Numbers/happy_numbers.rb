def is_happy?(n)
  false if n < 1

  oldnums = Array.new
  loop do
    n_digits = n.to_s.split(//)
    n = 0

    # for each digit in N:
    n_digits.each do |digit|
      n += digit.to_i ** 2 # add digit²
    end

    return false if oldnums.include?(n)
    return true if n == 1

    oldnums.push(n)
  end
end

# return the first 8 happy numbers
i = 1
count = 0
while count < 8
  if is_happy?(i)
    count +=1
    puts i
  end

  i += 1
end
