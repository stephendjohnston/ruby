# Write a method that returns an Array that contains every other element 
# of an Array that is passed in as an argument. The values in the returned 
# list should be those values that are in the 1st, 3rd, 5th, and so on 
# elements of the argument Array.
# Rules:
# numbers returned should be at even indexes starting at index 0

# Examples:
# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []

# Date structures:
# => inputs: arrays
# => outputs: arrays

# Algorithm:
# define method oddities(array)
# select the values at even indexes and return them to a new array
# output the new array

def oddities(array)
  array.select.each_with_index { |_, i| i.even? }
end

# LS solution

def oddities(array)
  odd_elements = []
  index = 0

  while index < array.size
    odd_elements << array(index)
    index += 2
  end
end


puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
