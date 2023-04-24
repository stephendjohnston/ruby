**Valid Parentheses**
===

_Problem:_
---

Write a function called that takes a string of parentheses, and determines if the order of the parentheses is valid. The function should return true if the string is valid, and false if it's invalid.

Along with opening (() and closing ()) parenthesis, input may contain any valid ASCII characters. Furthermore, the input string may be empty and/or not contain any parentheses at all. Do not treat other forms of brackets as parentheses (e.g. [], {}, <>).

inputs: string
outputs: boolean

rules: in order for validation, first bracket to appear in string must be a left bracket
- input size must be greater than 0 and less than 100 

_Examples:_
---

"()"              =>  true
")(()))"          =>  false
"("               =>  false
"(())((()())())"  =>  true

_Data Structures:_
---

String 
Array

_Algorithm:_
---

- initialize variable to keep track of brackets
- split the string into chars
- iterate over array of chars
- if a char is a (
  - add 1 to brackets variable
- if char is )
  - subtract 1 from brackets
- break from iteration if var < 0
- if brackets == 0 then true
  else false
