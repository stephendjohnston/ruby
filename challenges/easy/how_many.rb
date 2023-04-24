# Write a method that counts the number of occurrences of each
# element in a given array. The words in the array are case-sensitive:
# 'suv' != 'SUV'. ` Once counted, print each element alongside the 
# number of occurrences.
#

# Expected output:
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# Data Structures:
# => input: Array of strings
# => output: String, integer (hash key-value pairs)

# Algorithm:
# define method count_occurrences(array)
# 'count' 'each' number of instances of each string in array
# 'push' the count number with string value into a hash 'occurrences'
# print each key-value pair to screen

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  occurrences = {}

  array.each do |vehicle|
    occurrences[vehicle] = array.count(vehicle)
  end

  occurrences.each do |vehicle, count|
    puts "#{vehicle} => #{count}"
  end
end

count_occurrences(vehicles)

# student example below

# def count_occurrences(array)
#   array.uniq.each { |word| puts "#{word} => #{array.count(word)}"}
# end

# count_occurrences(vehicles)




