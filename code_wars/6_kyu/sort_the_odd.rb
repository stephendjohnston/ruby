=begin
problem:

You have an array of numbers.
Your task is to sort ascending odd numbers but even numbers must be on 
their places.

Zero isn't an odd number and you don't need to move it. If you have an 
empty array, you need to return it.

Example:

sort_array([5, 3, 2, 8, 1, 4]) == [1, 3, 2, 8, 5, 4]

Data structures: 

- arrays

Algorithm:

sort the array based on the odd numbers in the array, leaving the even
numbers in their current place(index)

- sort the odd numbers into another array
- map through the input array
- if the number is odd, return the first array in the sorted array
- else, use the current number


=end

def sort_array(source_array)
  odd_sorted = source_array.select(&:odd?).sort
  source_array.map {|input| input.even? ? input : odd_sorted.shift }
end

p sort_array([5, 3, 2, 8, 1, 4]) == [1, 3, 2, 8, 5, 4]
