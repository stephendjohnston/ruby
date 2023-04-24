# Print all odd numbers from 1 to 99, inclusive. All numbers should be 
# printed on separate lines.

# Date Structures:
# => output: integer

# Algorithm:
# use 'times' to count to 100 (times counts to 1 less than number provided)
# set the block to print the variable 'odd' if the number is '.odd?'

100.times {|num| puts num if num.odd? }

# or

1.upto(99) do |num|
  puts num if num % 2 == 1
end

# LS solution

value = 1 

while value <= 99
  puts value
  value += 2
end

# or

(1..99).select { |num| puts num if num.odd? }