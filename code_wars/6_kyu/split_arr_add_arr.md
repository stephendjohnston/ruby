Code Wars > split arr add arr

---

Split and Then Add Both Sides of an Array Together
===

### Problem

You will receive an array as parameter that contains 1 or more integers and a number `n`.

Here is a little visualization of the process:

* Step 1: Split the array in two:

* [1, 2, 5, 7, 2, 3, 5, 7, 8]
*       /            \
* [1, 2, 5, 7]    [2, 3, 5, 7, 8]

* Step 2: Put the arrays on top of each other:

* [1, 2, 5, 7]
* [2, 3, 5, 7, 8]

* Step 3: Add them together:

* [2, 4, 7, 12, 15]

---

### Examples/Test Cases

Input: arr=[4, 2, 5, 3, 2, 5, 7], n=2  

Round 1
-------
* step 1: [4, 2, 5]  [3, 2, 5, 7]

* step 2:    [4, 2, 5]
*         [3, 2, 5, 7]

* step 3: [3, 6, 7, 12]


Round 2
-------
* step 1: [3, 6]  [7, 12]

* step 2:  [3,  6]
*          [7, 12]

* step 3: [10, 18]


* Result: [10, 18]

---

### Data Structures

* inputs: array of integers
* outputs: array of integers

**Rules**:
* keep repeating the splitting and adding process `n` number of times or
until only one number remains.
* when splitting the array, if the array has an odd number of integers, split the array so that the second(bottom) array has the extra element
* when adding the arrays, add the elements in reverse order starting from element at index -1.

---

### Algorithm

* find midpoint(index) of array
* split the array at midpoint
* iterate through the first half of the array in reverse with map
* on each iteration, take the current element in the array and add it with the element from the second array at the corresponding index from the first array
* returns a new array
* continue process until `n` == 0
