**Large Numbers Last Digit**
============================

_Problem:_
----------

Define a function that takes in two non-negative integers a and b and returns the last decimal digit of a^b. Note that a and b may be very large!

For example, the last decimal digit of 9^7 is 9, since 9^7 = 4782969. The last decimal digit of (2^200)^(2^300), which has over 10^92 decimal digits, is 6. Also, please take 0^0 to be 1.

You may assume that the input will always be valid.

input: two positive integers
output: integer

rules:
- 0 to the power of 0 is 1
- all input will be valid
- always first integer to the power of the second integer

_Examples:_
------------

last_digit(4, 1), 4)
last_digit(4, 2), 6)
last_digit(9, 7), 9)
last_digit(10, 10 ** 10), 0)
last_digit(2 ** 200, 2 ** 300), 6)
last_digit(3715290469715693021198967285016729344580685479654510946723, 68819615221552997273737174557165657483427362207517952651), 7)

_Data Structures:_
------------------

- integers
- array

_Algorithm:_
------------

- save the result of first integer to the power of the second integer in a variable
- set that result to an array
- use method last to get the last digit of the array

def last_digit(n1, n2)
  n1**n2 % 10
end

# does not work for last three examples... numbers are too large

p last_digit(4, 1)
p last_digit(4, 2)
p last_digit(9, 7)
p last_digit(10, 10 ** 10)
p last_digit(2 ** 200, 2 ** 300)
p last_digit(3715290469715693021198967285016729344580685479654510946723, 68819615221552997273737174557165657483427362207517952651)



