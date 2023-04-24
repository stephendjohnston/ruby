# Write another method that returns true if the string passed as an argument 
# is a palindrome, false otherwise. This time, however, your method should be
# case-insensitive, and it should ignore all non-alphanumeric characters.

#real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false

# Data Stuctures:
# => inputs: string
# => outputs: string, boolean

# Algorithm:
# downcase the input string so all characters are equal
# need to remove all non-alphanumeric characters ex. commas etc
# compare input.downcase with string.reversed


# def real_palindrome?(string)
#   string.downcase!
#   new = string.delete("'")
#   newest = new.delete(",")
#   puts newest.split.join == newest.split.join.reverse 
# end

def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true  # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false