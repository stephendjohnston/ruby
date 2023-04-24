Code Wars > 6 kyu

---

Does My Number Look Big In This
===

### Problem

A Narcissistic Number is a positive number which is the sum of its own digits, each raised to the power of the number of digits in a given base. In this Kata, we will restrict ourselves to decimal (base 10).  

---

### Examples/Test Cases

* narcissistic?(153) => 1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153, true
* narcissistic?(1634) => 1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634, true
* narcissistic?(1633) => false

---

### Data Structures

* _inputs_: integers
* _outputs_: boolean

_rules_:
* return true or false depending upon whether the given number is a Narcissistic number in base 10.
* only valid positive non-zero integers will be passed into the function.

---

### Algorithm

**_mental model_**: Determine whether a given number is the sum of it's own digits squared to the number of digits in the given number.

* split the input number into an array of digits
* find the size of the array
* map through the array and square each number to the size of the array
* find the sum of all the squared numbers
* if the sum == the input number, return true, otherwise return false