def palindrome?(string)
  string.eql?(string.reverse)
end

puts palindrome?("racecar")