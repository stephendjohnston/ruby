# Write a method that takes one argument, a positive integer, and 
# returns a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.
#

# Examples:
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# Data Structures:
# => inputs: positive interger
# => outputs: string of alternating 1's and 0's

# Algorithm:
# define method 'stringy(integer)'
# create empty array 'numbers' to hold 1's and 0's
# use 'upto' to count from 1 up to given integer value
# use ternary operator to assign '1' if .odd evaluates true and add '0' if false to number variable
# append 1's and 0's to numbers array
# 'join' values of 1's and 0's
 

def stringy(integer)
  numbers = []
  
  1.upto(integer) do |n|          # counts from 1 up to integer value
    number = n.odd? ? 1 : 0       # determines whether current value is even or odd and assigns value to number for each iteration
    numbers << number             # pushes current value of number to numbers array
  end                             # process continues until the value of the given integer has been iterated through
  numbers.join                    # joins the values of the array into one string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
