# Write a program that will ask for user's name. The program will then
# greet the user. If the user writes "name!" then the computer yells back 
# to the user.

# Requirements:
# => implicit: '!' should be removed if user inputs
# => output string should be upcase if '!' is used.

# Example output:
# What is your name? Bob
# Hello Bob.
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

# Data Structures:
# => inputs: string
# => outputs: string

# Algorithm:
# Prompt user for name, get name
# if name has no extra characters, print greeting 'hello #{name}'
# if name has '!' print greeting in CAPS

puts "What is your name?"
name = gets.chomp

if name.include?('!')
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else 
  puts "Hello #{name}."
end