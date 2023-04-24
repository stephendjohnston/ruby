Code Wars > 6kyu
---

The Vowel Code
===

### Problem  

Step 1: Create a function called encode() to replace all the lowercase vowels in a given string with numbers according to the following pattern:

* a -> 1
* e -> 2
* i -> 3
* o -> 4
* u -> 5  

For example, encode("hello") would return "h2ll4". There is no need to worry about uppercase vowels in this kata.  

Step 2: Now create a function called decode() to turn the numbers back into vowels according to the same pattern shown above.  

For example, decode("h3 th2r2") would return "hi there".  

For the sake of simplicity, you can assume that any numbers passed into the function will correspond to vowels.  

---
### Examples/Test Cases

* encode('hello') == 'h2ll4'
* encode('How are you today?') == 'H4w 1r2 y45 t4d1y?'
* encode('This is an encoding test.') == 'Th3s 3s 1n 2nc4d3ng t2st.'
* decode('h2ll4') == 'hello'  

---
### Data Structure

inputs: string  
outputs: string

Rules:
  - replace vowels with corresponding numbers, or numbers with corresponding characters.
  - no need to worry about uppercase characters
  - only numbers from 1-5 are used

---
### Algorithm  

for encode:  

* create a string of the vowels. We'll use the indexes plus 1 to represent the integers.
* split the input string into an array of chars
* iterate over the array
* if the character is a vowel, use are vowels string to find the correct integer to replace it



