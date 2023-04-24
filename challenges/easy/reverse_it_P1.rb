# Write a method that takes one argument, a string, and returns a 
# new string with the words in reverse order.
#

# puts reverse_sentence('') == ''                                          => true
# puts reverse_sentence('Hello World') == 'World Hello'                    => true
# puts reverse_sentence('Reverse these words') == 'words these Reverse'    => true

# Data Structures:
# => input: string
# => output: string

# Algorithm: 
# => define method reverse_sentence(string)
# => 'split' string(s) into an array
# => 'reverse' the order of the string(s)
# => 'join(' ')' the strings back into a string of strings

def reverse(string)
  string.split.reverse.join(" ")
end

puts reverse('Hello World') == 'World Hello'
puts reverse('') == ''
puts reverse('Reverse these words') == 'words these Reverse'
