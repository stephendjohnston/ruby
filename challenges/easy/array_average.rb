# Write a method that takes one argument, an array containing integers,
# and returns the average of all numbers in the array. The array will 
# never be empty and the numbers will always be positive integers.
#

# Examples:
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# Data Structures:
# => inputs: array, integer(+)
# => outputs: integer(+)

# Algorithm: 
# define method def average(array)
# add the numbers to find the 'sum' of the array
# divide the 'sum' of the array by the 'size' of the array


def average(array)
  array.sum / array.size
end


def average(array)
  big_box = 0           # create an variable with a value of zero (it's an big empty box!)

  array.each do |b|     # you have a shelf lined with boxes of golf balls each labeled with a differet number of balls and you are going to put each box of balls into the empty box, one at a time and add up the total each time a box is added
    big_box += b        # this is where a box(golf balls) on the shelf gets added to the big box, then you move to the next box on the shelf and add it to the big box and continue doing this until you put the last box on the shelf in the big box
  end
  big_box / array.size  # divide the total number of golf balls(big_box) by the number of boxes of golf balls you put into the big_box
end

# LS Solution

def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end


puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40