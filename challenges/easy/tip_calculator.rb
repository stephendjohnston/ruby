puts "Please enter the bill amount:"
bill = gets.chomp.to_f

puts "Please enter the percentage you would like to tip:"
tip_percentage = gets.chomp.to_f / 100

tip = (bill * tip_percentage).round(2)
total = (bill + tip).round(2)

def decimals(integer)
  sprintf('%.2f', integer)
end


puts "The tip is $#{decimals(tip)}"
puts "The total is $#{decimals(total)}"