def vowel_count(string)
  vowels = ['a', 'e', 'i', 'o', 'u']
  count = 0
  vowels.each do |v|
    count += 1 if (string.include?(v))
  end
  count
end

puts vowel_count("hello")