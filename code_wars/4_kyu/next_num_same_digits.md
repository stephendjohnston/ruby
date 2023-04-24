**Next Bigger Number Same Digits**
---

**_Problem:_**


You have to create a function that takes a positive integer number and returns the next bigger number formed by the same digits.
If no bigger number can be composed using those digits, return -1. 

_inputs:_ integer  
_outputs:_ integer

_rules:_
- return -1 if no bigger number exists

**_Examples:_**  

- 12 ==> 21
- 513 ==> 531
- 2017 ==> 2071
- 9 ==> -1
- 111 ==> -1
- 531 ==> -1

**_Data Structures:_**  

- integer
- arrays

**_Algorithm:_**  

- split the number into an array
- find all the permutations of that array of numbers.
- select all of the numbers that are greater than the input number
  - if no numbers are greater, return -1
- use min on the returned array from select
- output min
