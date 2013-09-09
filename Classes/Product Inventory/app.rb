require_relative 'inventory'
require_relative 'product'

p1 = Product.new(1, 20, 1)
p2 = Product.new(2, 5, 10)

puts p1.to_s
puts p2.to_s

i = Inventory.new
i.add(p1, p2)

puts "Total value: #{i.value}€"