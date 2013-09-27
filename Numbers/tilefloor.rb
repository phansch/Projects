print "Enter cost of tile per m²: "
tilecost = gets.chomp.to_i
print "Enter width of area: "
width = gets.chomp.to_i
print "Enter height of area: "
height = gets.chomp.to_i

puts "Area size: #{width * height}m²"
puts "Total cost: #{tilecost * width * height}"