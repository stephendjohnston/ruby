numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|
  n if n.even?  # can be reduced to n.even? They both produce same result
end

p even_numbers

# More appropriate for our use case is Array#select, which is used 
# for selection and returns a new array containing only the elements 
# of the original array for which the return value of the block is truthy.
# whereas .map returns every element in the array regardless of whether we 
# wanted it included or not.