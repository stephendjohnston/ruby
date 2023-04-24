# Write a method that returns true if the string passed as an argument is 
# a palindrome, false otherwise. A palindrome reads the same forward and 
# backward. For this exercise, case matters as does punctuation and spaces.

# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

# Data structures:
# => inputs: string
# => outputs: string

# Algorithm
# compare string with reversed string

# def palindrome?(array)
#   puts array == array.reverse
# end

def palindrome?(string)
  puts string == string.reverse
end

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true