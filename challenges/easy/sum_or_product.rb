# Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum or product of all numbers
# between 1 and the entered integer.

# Example outputs:
# The sum of the integers between 1 and 5 is 15.
# The product of the integers between 1 and 6 is 720.


# Data Structures
# => inputs: integer, string
# => outputs: integer

# Algorithm:
# define method sum(integer) to calculate sum of inputs
# set total variable to 0
# use upto to count from 1 to integer input and add each iteration to total
# define method product(integer) to calculate the product of inputs
# set variable total to 1
# use upto to count from 1 to integer input and multiply at each iteration adding each iteration to total
# prompt user for integer input greater than 0 and gets input in variable 'integer'
# prompt user string 's' or 'p' to determine which method gets used
# use if/else based on 's' or 'p' input to determine which method will be used
# assign return value of method to new variable within each if/else node
# use string interpolation to output values
# add error message if non 's' or 'p' input is entered


def sum(integer)
  value = 0

  1.upto(integer) do |int|      # could remove do/end and use block or use:
    value += int                # (0..number).reduce(:+)
  end
  value
end

def product(integer)
  value = 1

  1.upto(integer) do |int|      # could use reduce method: (1..number).reduce(:*)
    value *= int
  end
  value
end


puts ">> Please enter a enter an integer greater than 0:"
integer = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
s_or_p = gets.chomp.downcase

if s_or_p == 's'
  sum = sum(integer)
  puts "The sum of integers between 1 and #{integer} is #{sum}."
elsif s_or_p == 'p'
  product = product(integer)
  puts "The product of integers between 1 and #{integer} is #{product}."
else
  puts "Error, invalid input. Better luck next time."
end