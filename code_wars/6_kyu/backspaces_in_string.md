**Backspaces in String**
===

_Problem:_
---

Assume "#" is like a backspace in string. This means that string "a#bc#d" actually is "bd"

Your task is to process a string with "#" symbols.

inputs: string
outputs: mutated string

rules: 
- for every # occurrence, the char preceding the # must be removed along with the #

_Examples:_
---

"abc#d##c"      ==>  "ac"
"abc##d######"  ==>  ""
"#######"       ==>  ""
""              ==>  ""

_Data Structures:_
---

string
array

_Algorithm:_
---

- split the string into an array of chars
- intialize an array 
- enter a loop
  - use shift to assign the first element of the array to char variable
  - if char is a # remove the last element in our result array
  - if the char is not a # add that element to the array
  - break out of the array if the the chars array is empty
- join the result array