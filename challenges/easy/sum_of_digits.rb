# Write a method that takes one argument, a positive integer, and returns 
# the sum of its digits.
#

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# Date Structures:
# => inputs: integer(+)
# => outputs: integer(+)

# Algorithm:
# define method def sum(integer)
# convert integer to string with to_s
# 'split' string into array of strings
# 'map' over array to convert array into array of integers
# use 'sum' or 'reduce' to add up integers in array

# def sum(integer)
#   integer.to_s.split('').map(&:to_i).reduce(:+)
# end

# my solution

def sum(number)
  number.to_s.split('').map {|x| x.to_i}.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

#LS solutions

# def sum(number)
#   number.to_s.chars.map(&:to_i).reduce(:+)
# end

# #or

# def sum(number)
#   sum = 0 
#   str_digits = number.to_s.chars

#   str_digits.each do |str_digit|
#     sum += str_digit.to_i
#   end
#   sum
# end