# Write a method that returns true if its integer argument is palindromic, 
# false otherwise. A palindromic number reads the same forwards and 
# backwards.

# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true

# Data Structures:
# => inputs: integer
# => outputs: integer, boolean

# Algorithm:
# convert integer to string with to_s
# reverse string of integers
# convert back to integer
# compare integer to integer reversed

def palindromic_number?(integer)
  integer == integer.to_s.reverse.to_i
end

# LS solution

def palindrome?(string)
  string == string.reverse
end

def palindromic_number?(number)
  palindrome?(number.to_s)
end

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true
