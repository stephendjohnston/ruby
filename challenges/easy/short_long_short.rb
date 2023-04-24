# Write a method that takes two strings as arguments, determines the 
# longest of the two strings, and then returns the result of concatenating
# the shorter string, the longer string, and the shorter string once again. 
# ou may assume that the strings are of different lengths.

# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# Data Structures:
# => inputs: two strings
# => outputs: one string

# Algorithm:
# compare the length of the 2 strings that were input
# concatenate the shorter of the two strings to the front and end of the longer string
# output the concatenated string

def short_long_short(string1, string2)
  if string1.length > string2.length
    "#{string2}#{string1}#{string2}"
  else
    "#{string1}#{string2}#{string1}"
  end
end

# LS solution does not use string interpolation but recognizes it as a 
# valid option. Also could've use ternary operator or put strings into
# array and sort by length as shown below

def short_long_short(string1, string2)
  arr = [string1, string2].sort_by { |el| el.length }
  arr.first + arr.last + arr.first
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"