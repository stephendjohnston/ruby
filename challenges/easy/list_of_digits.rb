# Problem
# Write a method that takes one argument, a positive integer, 
# and returns a list of the digits in the number.
#

# Examples:
# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

# Date Structures:
# => inputs: + integer
# => outputs: array, integers

# Algorithm
# => define method digit_list(integer)
# => convert integer into string to_s
# => split the string into individual characters
# => convert strings back into intgers to_i




def digit_list(integer)
  integer.to_s.split('').map(&:to_i)
end

def digit_list(integer)
  digits = []

  loop do
    integer, remainder = integer.divmod(10)
    digits.unshift(remainder)
    break if integer == 0 
  end
  digits
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     
puts digit_list(7) == [7]                     
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] 
puts digit_list(444) == [4, 4, 4]


