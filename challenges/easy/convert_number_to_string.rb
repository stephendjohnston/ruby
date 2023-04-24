#Write a method that takes a positive integer or zero, and converts it to a
# string representation. You may not use any of the standard conversion
# methods available in Ruby, such as Integer#to_s, String(),
# Kernel#format, etc. 

# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

# Data Structures:
# => inputs: integers
# => outputs: string

# Algorithm:
# create an empty array 
# use loop do
# use divmod(10) to get the remainder of the integer
# unshift the remainder into the empty numbers array
# break if the integer = 0.
# use join to combine the array into one string of numbers


def integer_to_string(integer)
numbers = []
  
  loop do
    integer, remainder = integer.divmod(10) 
    numbers.unshift(remainder)
    break if integer == 0
  end
numbers.join   # using join takes an array of integers and converts the values to a single string
end

# LS Solution 

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'


