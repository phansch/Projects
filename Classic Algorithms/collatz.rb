
# Check whether input is > 1 or not
# return input if > 1
def check_input
  input = ""
  loop do
    puts "Enter a number > 1"
    input = gets.chomp

    input.to_i > 1 ? break : nil
  end
  input.to_i
end

def collatz(num)
  steps = 0
  while num != 1
    if num.even?
      num /= 2
    else
      num = num * 3 + 1
    end
    steps += 1
  end
  steps
end

num = check_input
steps = collatz(num)
puts "Steps: #{steps}"