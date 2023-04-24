# Build a program that displays when the user will retire and how many 
# years she has to work till retirement.

# Example: 
# What is your age? 30
# At what age would you like to retire? 70
# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

# Data Structures: 
# => inputs: integer
# => outputs: integer

# Algorithm:
# use Time to get current year and set to variable 'year'
# prompt user for age, gets input
# prompt user for retirement age, gets input
# create new variable 'years_left' equal to retirement age - age 
# set variable 'retirement_year' = years_left + year
# use string interpolation to output data

year = Time.new.year

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

years_left = retirement_age - age
retirement_year = year + years_left

puts "It's #{year}. You will retire in #{retirement_year}." + \
     "You only have #{years_left} years of work to go!"