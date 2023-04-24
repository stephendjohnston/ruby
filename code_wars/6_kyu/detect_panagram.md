**Detect Panagram**
==================

_Problem:_
---------

A panagram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

inputs: string
outputs: boolean

Rules:
- ignore case, numbers and punctuation
- return boolean


_mental model:_

  ignoring case, numbers, and punctuation, determine whether the input string contains ever single letter of the alphabet at least once.

_Examples/Test cases:_
-----------------------

panagram?("The quick brown fox jumps over the lazy dog."), true
panagram?("This is not a pangram."), false

_Data Structures:_
------------------

- string
- array
- hash 

_Algorithm:_
-------------

- initialize empty hash
- delete all non-letter characters from the string(punctuation, numbers)
- split string into individual characters with chars method and downcase each letter
- loop through array of characters and push each letter into the hash and count the occurrence of each letter with the count method
  - each letter will represent a key while the occurrences of each letter will represent the values
- conditional check to see if the hash meets our requirements
- for the hash to meet requirements:
  - the hash size must be equal to 26 (alphabet size) and each value within the hash must be => 1

