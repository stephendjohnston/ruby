# Write a method that takes an Array of numbers, and returns an Array with 
# the same number of elements, and each element has the running total from
# the original Array.

# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# Date Structures:
# => inputs: array of numbers
# => outputs: array of numbers

# Algorithm:
# add each number in the array together
# each time an addition is made, save that number into a new array
# print the result of the new array
# => More details
# creat empty array to hold new values from additions
# use count to iterate through each value of new array for additions
# use each to iterate through input array
# use if new_array.empty to add first value from input array
# else the next number in the new array equals the next number in the iteration + the previous value in new_array
# 


def running_total(array) 
  new_array = []
  count = 0

  array.each do |number|
    if new_array.empty?
      new_array << number
    else
      next_number = number + new_array[count - 1]
      new_array << next_number
    end
    count += 1
  end
new_array
end

# LS solution

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []