
def start
  puts "Enter 1 for binary to decimal conversion or 2 for decimal to binary conversion"
  input = gets.chomp

  choice = case input
    when "1" then bin2dec
    when "2" then dec2bin
    else start
  end
end

def dec2bin
  puts "Enter a decimal number to be converted to binary"
  decimal = gets.chomp.to_i
  puts "#{decimal} in binary: #{decimal.to_s(2)}"
end

def bin2dec
  puts "Enter a binary number to be converted to decimal"
  binary = gets.chomp
  puts "#{binary} in decimal: #{binary.to_i(2)}"
end

start