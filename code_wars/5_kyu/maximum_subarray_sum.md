**Maximum Subarray Sum**
========================

_Problem:_
----------

The maximum sum subarray problem consists in finding the maximum sum of a contiguous subsequence in an array or list of integers:

maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
-- should be 6: [4, -1, 2, 1]

Easy case is when the list is made up of only positive numbers and the maximum sum is the sum of the whole array. If the list is made up of only negative numbers, return 0 instead.

Empty list is considered to have zero greatest sum. Note that the empty list or array is also a valid sublist/subarray.

inputs: array of integers(+ and -)
outputs: integer(greatest sum of subsequent numbers in array)

rules:
  - Explicit:
    - return 0 if all numbers in array are negative or array is empty

_mental model:_

  - loop through the array and find the greatest sum of subsequent numbers

_Examples:_
------------

_Data Structures:_
------------------

- array

_Algorithm:_
------------

- set condition that if the array is empty or if all of the numbers are negative, 0 is returned
- initialize a start index = 0 to use to iterate through each sequence of numbers
- initialize max_sum variable to use in comparison with sum of each sequence
- initialize outer loop
  - initialize end index = -1
    - initialize inner loop
      - set current sum = to sum of current sequence of numbers
      - set max sum = current sum if the current sum is greater than the max sum
      - reassign end index -= 1 to change sequence of numbers to compare
      break of out this loop if the end index is less than or equal to negative array.size - 1( minus one or loop will break out before all neccessary iterations are made)
  - reassign start index += 1 to move to next start position of sequence
  - break out of outer loop if start index >= array.size
- output max sum
