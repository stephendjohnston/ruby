# Write a program that solicits 6 numbers from the user, then prints a 
# message that describes whether or not the 6th number appears amongst the 
# first 5 numbers.

# Example:
# 

# Data Structures:
# => inputs: integer, array
# => outputs: integer, string

# Algorithm:
# ask the user for 6 integers six differet times
# store the numbers in an array
# is the last number included in the array?

def prompt(message)
  puts ("=> #{message}")
end

def numbers_array(number)
  

numbers = []

prompt("Enter the 1st number:")
number_1 = gets.chomp
numbers << number_1

prompt("Enter the 2nd number:")
number_2 = gets.chomp
numbers << number_2

prompt("Enter the 3rd number:")
number_3 = gets.chomp
numbers << number_3

prompt("Enter the 4th number:")
number_4 = gets.chomp
numbers << number_4

prompt("Enter the 5th number:")
number_5 = gets.chomp
numbers << number_5

prompt("Enter the last number:")
number_last = gets.chomp

if numbers.include?("#{number_last}")
  prompt("The number #{number_last} appears in #{numbers}.")
else 
  prompt("The number #{number_last} does not appear in #{numbers}.")
end
