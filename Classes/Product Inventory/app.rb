require_relative 'inventory'
require_relative 'product'

i = Inventory.new

puts "---------------"
puts "Enter 'p' to add a new product to the inventory."
puts "Enter 'v' to print the current value of your inventory."
puts "Enter 'q' to quit."

loop do
  print ":"
  choice = gets.chomp

  case choice
  when 'p'
    print "Enter product id: "
    pid = gets.chomp.to_i

    print "Enter product price: "
    price = gets.chomp.to_i

    print "Enter product quantity: "
    quantity = gets.chomp.to_i

    product = Product.new(pid, price, quantity)
    i.add(product)

    puts "Product added to inventory: #{product.to_s}"
  when 'v'
    puts "Total value: #{i.value.to_s}€"
  when 'q'
    break
  else
    puts "Wrong input."
  end
end
