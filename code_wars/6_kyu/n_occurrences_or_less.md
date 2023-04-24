**N Occurrences or Less**
=========================

_Problem:_
----------

Given a list lst and a number N, create a new list that contains each number of list at most N times without reordering. For example if N = 2, and the input is [1,2,3,1,2,1,2,3], you take [1,2,3,1,2], drop the next [1,2] since this would lead to 1 and 2 being in the result 3 times, and then take 3, which leads to [1,2,3,1,2,3].

inputs: array of integers
outputs: array of integers 

rules:
- do not reorder array
- each integer can occurr equal to N times
- create new array

_mental model:_

  take an array and alter it so that each element in the array occurrs N times or less.

_Examples:_
-----------

delete_nth([20,37,20,21], 1) == [20,37,21]
delete_nth([1,1,3,3,7,2,2,2,2], 3) == [1, 1, 3, 3, 7, 2, 2, 2]

_Data Structures:_
------------------

- array
- hash

_Algorithm:_
------------

- initialize empty array
- loop through input array with each method
- add each integer from the input array into the initialized array unless
  the array contains n number of that integer
- output the new array
