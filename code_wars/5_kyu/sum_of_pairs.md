**Sum of Pairs**
===

_Problem:_
---

Given a list of integers and a single sum value, return the first two values (parse from the left please) in order of appearance that add up to form the sum.

inputs: array of integers and sum value(integer)
outputs: array of two integers from array that add up to sum value

rules:
- some arrays may contain more than one pair of valid integers
  - take the pair that appears earliest on in array
- output "none" if no values add up to sum value

_Examples:_
---

sum_pairs([11, 3, 7, 5],         10) == [3, 7]
sum_pairs([4, 3, 2, 3, 4],         6) == [4, 2]
sum_pairs([0, 0, -2, 3], 2) == None/nil/undefined (Based on the language)
sum_pairs([10, 5, 2, 3, 7, 5],         10) == [3, 7]

_Data Structures:_
---

- arrays

_Algorithm:_
---

HIGH LEVEL:

We need to set two indices to keep track of two different values that will be used to find the sum. The first index will bet set at a certain index, while the second index willbe used to iterate through the rest of the list. For example, the first index will be set to the first value in the array, upon each loop, the second index will move from left to right through the list adding the values of the 0 index and whatever value the second index is referencing. This also means we will need 2 loops, so that we can move the set index to index 1 in the array and then begin looping throught the list once again, but starting one index higher than we did thre previous loop. as we loop through the list, we will save any values that equal the sum as an array pair in a result array. For any arrays that have multiple pair of integers that add up to the given sum, we will need to compare the indices of all the pairs to determine which pair came first in the array. For this reason, we will also need to save the indices of each pair of values. Save this into an array of arrays, with each sub-array containing the indices pairs. We really only need to compare the index of the second value for each pair. So whatever value has the lowest index will mean that pair appears first in the array.




