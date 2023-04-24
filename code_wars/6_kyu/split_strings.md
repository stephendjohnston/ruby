**Split Strings**
===

_Problem:_
----

Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_') 

inputs: string
outputs: array of string objects

rules: if the string size is odd, the last element in the array should be one character plus an underscore

_Examples:_
---

solution('abc') # should return ['ab', 'c_']
solution('abcdef') # should return ['ab', 'cd', 'ef']

_Data Structures:_
---

String
Array

_Algorithm:_
---

- split the string into an array of strings with each element size == 2
- if the last element size == 1
  - concat an underscore to that element
- ternary operator
  - last element size == 1 ? last element = element + _ : array
- output array if last element size == 1


