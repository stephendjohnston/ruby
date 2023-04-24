# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. You may not use to_i. Your method should do this the
# old-fashioned way and calculate the result by analyzing the characters in 
# the string.

# Rules: For now, do not worry about leading + or - signs, nor should you 
# worry about invalid characters; assume all characters will be numeric.

# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

# Data structures:
# => inputs: string of integers
# => outputs: integer

# Algorithm:
# use hash key-value pairs to assign string values to integer values?
# EX "1" = 1, "2" = 2
# use split or chars to seperate input strings into individual string elements in an array

DIGITS = {
  '0'=> 0, '1'=> 1, '2'=> 2, '3'=> 3, '4'=> 4,
  '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9,
  'A'=> 10, 'B'=> 11, 'C'=> 12, 'D'=> 13, 'E'=> 14, 'F'=> 15
 }

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char]}

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def hexadecimal_to_integer(string)
  digits = string.upcase.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 16 * value + digit }
  value
end


p hexadecimal_to_integer('4D9f') == 19871
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
