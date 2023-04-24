=begin

PROBLEM
-------
Pirates have notorious difficulty with enunciating. They tend to blur all
the letters together and scream at people. At long last, we need a way to
unscramble what these pirates are saying.

Write a function that will accept a jumble of letters as well as a 
dictionary, and output a list of words that the pirate might have meant.

For example:

grabscrab( "ortsp", ["sport", "parrot", "ports", "matey"] )
Should return ["sport", "ports"].

Return matches in the same order as in the dictionary. 
Return an empty array if there are no matches.
=======================================================

PEDAC
-----
return the words from the dictionary that contain the same letters as 
the anagram input.

inputs: string, array of strings
outputs: array of strings, words from the dictionary that are made up 
of the same letters as the input string

rules:
- return an empty array if there are no matches
- return matches in same order that they appear in the dictionary

Algorithm:
- iterate through dictionary with select
  - sort the input string and the current word in the iteration
  - if they match, return current word in the iteration
=end

def grabscrab(anagram, dictionary)
  dictionary.select do |word|
    string.chars.sort == word.chars.sort
  end
end

p grabscrab("trisf", ["first"]) == ["first"]
p grabscrab("oob", ["bob", "baobab"]) == []
p grabscrab("ainstuomn", ["mountains", "hills", "mesa"]) == ["mountains"]
p grabscrab("oolp", ["donkey", "pool", "horse", "loop"]) == ["pool", "loop"]
p grabscrab("ortsp", ["sport", "parrot", "ports", "matey"]) == ["sport", "ports"]
p grabscrab("ourf", ["one","two","three"]) == []
