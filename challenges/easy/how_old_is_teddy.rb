# Build a program that randomly generates and prints Teddy's age.
# To get the age, you should generate a random number between 20 and 200.

# Example output:
# Teddy is 69 years old!

# Data Structures:
# => inputs: string
# => outputs: string, integer

# Algorithm:
# get a 'rand'om number from a range 20..200
# output random number usiing string interpolation

num = rand(20..200)
puts "Teddy is #{num} years old!"

# Further exploration

puts "Please enter your name:"
name = gets.chomp

if name.empty?
  puts "Teddy is #{num} years old!"
else
  puts "#{name} is #{num} years old!"
end


