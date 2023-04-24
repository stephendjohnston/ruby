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
