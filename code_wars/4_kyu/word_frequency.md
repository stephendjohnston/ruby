**Most Frequently Used Words In a Text**
---

**_Problem:_**


Write a function that, given a string of text (possibly with punctuation and line-breaks), returns an array of the top-3 most occurring words, in descending order of the number of occurrences.

_inputs:_ string  
_outputs:_ array of strings (top three most used words from string)

rules:
- punctuation should not be included as part of word
- matches are case insensitive
- string results should be lowercased
- if text contains less than 3 unique words, top 2, or top word should be returned or empty array if text contains no words.


**_Examples:_**  

top_3_words("In a village of La Mancha, the name of which I have no desire to call to mind, there lived not long since one of those gentlemen that keep a lance in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.")

=> ["a", "of", "on"]

top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")

=> ["e", "ddd", "aa"]

top_3_words("  //wont won't won't")

=> ["won't", "wont"]

**_Data Structures:_**  

- String
- Array 
- Hash

**_Algorithm:_**  

_Mental Model:_ sort the text into a hash with the words as the keys and the number of times each word occurs as the value. Sort the hash based on values with highest values in the first 3 indices of the array.


- initialize an empty hash occurrences
- split the text into an array
- iterate through the array
  - on each iteration, assign to the hash the current word to the number of times it occurs in the text with the count method
- sort the hash with the words with the highest values at the front of the hash
- return the first three words in the hash
