# Understand the Problem:
#

# Write a method that takes two arguments, a string and a positive 
# integer, and prints the string as many times as the integer indicates.

# Inputs >> two arguments
#           - string and positive integer
# Outputs >> string

# Explicit requirements >> use a method
#                       >> positive integer and 2 arguments
#                       >> print string as many times as integer indicates

# Implicit requirements >> each string output on seperate line
#                       >> First letter of string is capitalized

# Clarifiying Questions:
# => What if only one argument is provided? 

# Examples/Test Cases:
# => repeat('Hello', 0)
# => repeat('Hello', 1)
# => repeat('', 5)
# => repeat('Hello', -4)
# => repeat('hello', 10)
# => repeat('hello', )

# Date structures:
# => input is a string and integer
# => output is a string

# Algorithm:
# define method name with 2 parameters >> def repeat(string, integer)
# use times to print out string the number of times the integer indicates

def repeat(string, integer)
  integer.times do
    puts string
  end
end

  repeat('Hello', 3)