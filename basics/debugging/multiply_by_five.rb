def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp.to_i

puts "The result is #{multiply_by_five(number)}!"

# Remember that all user input will be a String. In order to perform 
# Integer multiplication, we need to first convert the user input from 
# a String to an Integer. 
# gets.chomp becomes gets.chomp.to_i