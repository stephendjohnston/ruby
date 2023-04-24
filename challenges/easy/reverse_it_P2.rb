# Write a method that takes one argument, a string containing one 
# or more words, and returns the given string with words that contain 
# five or more characters reversed. Each string will consist of only 
# letters and spaces. Spaces should be included only when more than one
# word is present.
#
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# Data Structures:
# => input: string => 1 word
# => output: string. if a word => 5 letters, word should be reversed

# Algorithm:
# define method reverse_words(string)
# create empty array 'words' to push words to
# 'split' string into array
# iterate through array 'array.each do |word|'
# reverse the word if the word => 5 letters
# then 'push' the word to 'words' 

def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end
  words.join(' ')
end

puts reverse_words('Professional')          
puts reverse_words('Walk around the block') 
puts reverse_words('Launch School')         

