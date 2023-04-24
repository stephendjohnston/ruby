# Write a program that will ask a user for an input of a word or multiple
# words and give back the number of characters. Spaces should not be 
# counted as a character.

# Examples:
# => There are 4 characters in "walk".
# => There are 13 characters in "walk, don't run".

# Data Structures:
# => input: strings
# => output: strings

# Algorithm:
# ask user for input
# take input and count the characters in input
# => split the input into an array 
# => join the array together so there are no spaces in between characters
# => count the length of the string
# output the results


def count_letters(string)
string.split.join('').length
end

puts "Please write one or more words:"
words = gets.chomp

puts "There are #{count_letters(words)} characters in '#{words}'."

# LS Solution

print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."