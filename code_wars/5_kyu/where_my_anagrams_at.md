**Where My Anagrams At**
========================

_Problem:_
-----------

What is an anagram? Well, two words are anagrams of each other if they both contain the same letters. Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array with words. You should return an array of all the anagrams or an empty array if there are none. For example:

inputs: string and array of strings
outputs: array of strings(words from array that are anagrams of input word)

rules: 
- anagrams are words that are the same size and contain the exact same letters

_Examples:_
------------

anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) => ['aabb', 'bbaa']

anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) => ['carer', 'racer']

anagrams('laser', ['lazing', 'lazy',  'lacer']) => []

_Data Structures:_
------------------

- string
- array

_Algorithm:_
------------

- initialize empty array
- assign all anagrams of input word to variable anagrams
  - call chars method on input word
  - call permutation method on array of characters
  - call to_a on permutation
  - call uniq method to get rid of duplicates
  - we now have an array of nested arrays containing the characters that are anagrams of the input word
  - call map on the array and join the nested arrays so that they are now complete strings

- iterate through the input array
- if the input word is included in array of permutations, add the word from the current iteration to the initialized array
- output the array after all iterations have been performed
