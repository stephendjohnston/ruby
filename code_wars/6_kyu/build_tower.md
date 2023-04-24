Code Wars > 6_kyu
---

Build Tower
===

### Problem

Build Tower by the following given argument:
number of floors (integer and always greater than 0).  

Tower block is represented as *

---

### Examples/Test Cases

* towerBuilder(3) ==

[
  '  *  ', 
  ' *** ', 
  '*****'
]

---

### Data Structures

**inputs**: integer
**outputs**: array of strings  

**rules**:
* each consecutive floor goes up by two `*` characters starting at 1.
* for every floor you go up, the previous floor gets spaces on either side of `*` to keep the character in the middle of the string

---

### Algorithm

_mental model_: Each floor will consist of `*` and `" "`(spaces). This means each string will have the same size as the others as the floors increase.  

* get array of `*` characters then sort out spaces
* use times method
* each iteration add the correct number of `*` to result array
* add the spaces now
* iterate through 0..n_floors and on each iteration, return a string using interpolation, with spaces, `*` characters, and more spaces
