##### Code Wars > 4 KYU

---

# Most Frequently Used Words in a Text

## Problem

Write a function that, given a string of text (possibly with punctuation and line-breaks), returns an array of the top-3 most occurring words, in descending order of the number of occurrences.

### Assumptions:

- A word is a string of letters (A to Z) optionally containing one or more apostrophes (`'`) in ASCII.
- Apostrophes can appear at the start, middle or end of a word (`'abc`, `abc'`, `'abc'`, `ab'c` are all valid)
- Any other characters (e.g. `#`, `\`, `/` , `.` ...) are not part of a word and should be treated as whitespace.
- Matches should be case-insensitive, and the words in the result should be lowercased.
- Ties may be broken arbitrarily.
- If a text contains fewer than three unique words, then either the top-2 or top-1 words should be returned, or an empty array if a text contains no words.

### Examples:

```
top_3_words("In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.")
# => ["a", "of", "on"]

top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")
# => ["e", "ddd", "aa"]

top_3_words("  //wont won't won't")
# => ["won't", "wont"]
```

## Inputs / Outputs

### Inputs

#### String

- words separated by spaces
- Upper and lowecase letters

### Outputs

#### Array

- top three most occurring words from string
- all in lowercase
- in descending order of the number of occurrences

## Rules

- words are alpha chars and may contain apostrophes anywhere in the word
  - ex. 'wont, won't, wont', wont
    - all are valid words but are not the same word
  - a word must contain alpha chars
    - Ex a word with only apostrophe does not count as a word
- words are case insensitive
  - 'Abc' is the same as 'aBc'
- any chars that are not alpha chars or apostrophes should be treated as whitespace
- If a text contains fewer than three unique words, then either the top-2 or top-1 words should be returned, or an empty array if a text contains no words.

## Examples

```javascript
console.log(topThreeWords("a a a  b  c c  d d d d  e e e e e"))// ['e','d','a'])
  
console.log(topThreeWords("a a c b b"))// ['a','b','c'])
  
console.log(topThreeWords("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")) //['e','ddd','aa'])

console.log(topThreeWords("  //wont won't won't "))// ["won't", "wont"])
  
console.log(topThreeWords("  , e   .. "))// ["e"])

console.log(topThreeWords("  ...  "))// [])

console.log(topThreeWords("  '  "))// [])
  
console.log(topThreeWords(`In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.`))// ['a','of','on'])
```

## Mental Model

Use regex to replace all non-alpha chars and apostrophes with empty string ('') and convert to a lowercase string. Check if there are any alpha chars remaining in the cleaned string. Return an empty array if there are no alpha chars. Split the string into an array of words. Iterate over the array of words using reduce to build an object that has the words as the keys and the count of each word as a value. Take the three properties with the highest values and sort them into an array from highest to lowest.

## Algorithm

- Replace all non-alpha chars except apostrophes with ''
- Convert string to lowercase
- test if there are any alpha chars in the string
  - return empty array if no alpha chars
- split the string into an array of words
- use reduce to build an object
  - the `acc` will be an object the `val` will be the current word
  - on each iteration, check if the `acc` has the `val` as a property
    - if it does, increment the value by 1
    - if it does not, set the value to 0, and then increment by 1
- get the keys of the object
- map over the keys
  - return the key and value as an array
- sort this array of arrays based on the value at index 1 of each nested array
- slice this sorted array from index 0-2
- Map over the sorted array
  - return the elements at index 0 of each nested array
- return this array

## Code

```javascript
"use strict";

function topThreeWords(string) {
  string = string.toLowerCase().replace(/[^a-z' ]/g, '');
  if (!/[a-z]/.test(string)) return [];

  let count = string.split(/[ ]+/).reduce((obj, word) => {
    obj[word] = (obj[word] || 0) + 1;
    return obj;
  }, {});

  let countArray = Object.keys(count).map(key => {
    return [key, count[key]];
  });

  let topThree = countArray.sort((a, b) => b[1] - a[1]).slice(0, 3);
  console.log(count)
  return topThree.map(arr => arr[0]).filter(el => el);

}

console.log(topThreeWords("a a a  b  c c  d d d d  e e e e e"))// ['e','d','a'])
console.log(topThreeWords("a a c b b"))// ['a','b','c'])
console.log(topThreeWords("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")) //['e','ddd','aa'])
console.log(topThreeWords("  //wont won't won't "))// ["won't", "wont"])
console.log(topThreeWords("  , e   .. "))// ["e"])
console.log(topThreeWords("  ...  "))// [])
console.log(topThreeWords("  '  "))// [])
console.log(topThreeWords(`In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.`))// ['a','of','on'])
```





