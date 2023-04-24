# Build a program that asks a user for the length and width of a room in 
# meters and then displays the area of the room in both square meters and
# square feet.
# Note: 1 square meter == 10.7639 square feet

# Example output:
# => The area of the room is 70.0 square meters (753.47 square feet).

# Data structures: 
# => input: integer/float
# => output: integer/float

# Algorithm:
# prompt user for length of room and for width
# get input
# multiply length by width to get area
# multiply area by 10.7639 to get square footage
# use string interpolation to output area in square meters and feet

#my solution

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area = length * width

puts "The area of them room is #{area} square meters" + \
    "(#{area * 10.7639} square feet)."

#LS solution: uses constant and rounding

SQMETERS_TO_SQFEET = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

square_meters = (length * width).round(2)
square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{square_meters} " + \
     "square_meters (#{square_feet} square feet)."

# further exploration

SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCM = 923.03

puts "Enter the length of the room in feet:"
length = gets.chomp.to_f

puts "Enter the width of the room in feet:"
width = gets.chomp.to_f

square_feet = (length * width).round(2)
square_inches = (square_feet * SQFEET_TO_SQINCHES).round(2)
square_cm = (square_feet * SQFEET_TO_SQCM).round(2)

puts "The area of the room is #{square_feet} square feet " + \
     "(#{square_inches} square inches or #{square_cm} square cm)."