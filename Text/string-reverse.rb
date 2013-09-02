def string_reverse(string)
  length = string.length
  output = ''
  (length-1).downto(0) do |i|
    output += string[i]
  end
  output
end

puts string_reverse("hello")

puts "hello".reverse! # inplace ruby version of string reverse