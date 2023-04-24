##### Ruby Challenges > Easy 2

---

## Scrabble Score

**Problem:**

Write a program that, given a word, computes the scrabble score for that word.

**Letter Values**

* A, E, I, O, U, L, N, R, S, T = 1
* D, G                         = 2
* B, C, M, P                   = 3
* F, H, V, W, Y                = 4
* K                            = 5
* J, X                         = 8
* Q, Z                         = 10

---

**Examples / Test Cases:**

"cabbage" should be scored as worth 14 points:

* 3 points for C
* 1 point for A, twice
* 3 points for B, twice
* 2 points for G
* 1 point for E

And to total: 

* 3 + 2*1 + 2*3 + 2 + 1
* = 3 + 2 + 6 + 3
* = 5 + 9
* = 14

---

**Data Structure:**

**_Inputs_**

* String

**_Outputs_**

* Integer (represents that score value of the input string)

**_Rules_**

* Use the given score values for each letter of the alphabet
* inputs should be case insensitive 

---

**Algorithm:**

Iterate through the input string and use a hash to retrieve the value associated with each letter of the alphabet, then add up to the total values.

* initialize score of 0 for each Scabble object
* create a hash that will have the point values as the values, and an array of the characters corresponding to that value, as the keys.
* need to iterate through each character of the string then iterate through the keys of the hash
  * if the one of the arrays of letters(keys) contains the current letter from the input string, retrieve the value that corresponds with that key.
  * add the value to the word score
* output the word score

---

**Code:**

**_Orginal Solution:_**

```ruby
class Scrabble
  LETTER_SCORES = {
    ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'] => 1,
    ['D', 'G'] => 2,
    ['B', 'C', 'M', 'P'] => 3,
    ['F', 'H', 'V', 'W', 'Y'] => 4,
    ['K'] => 5,
    ['J', 'X'] => 8,
    ['Q', 'Z'] => 10
  }.freeze

  def initialize(word)
    @word = word
    @word_score = 0
  end

  def self.score(word)
    Scrabble.new(word).score
  end

  def score
    return @word_score unless valid_word?
    char_array = word_to_upcase_chars

    char_array.each do |char|
      LETTER_SCORES.keys.each do |letters|
        if letters.include?(char)
          @word_score += LETTER_SCORES[letters]
        end
      end
    end
    @word_score
  end

  private

  def word_to_upcase_chars
    @word.upcase.chars
  end

  def valid_word?
    @word =~ /\A[a-z]+$/i
  end
end
```

**Refactored:**

```ruby
class Scrabble
  LETTER_SCORES = {
    ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'] => 1,
    ['D', 'G'] => 2,
    ['B', 'C', 'M', 'P'] => 3,
    ['F', 'H', 'V', 'W', 'Y'] => 4,
    ['K'] => 5,
    ['J', 'X'] => 8,
    ['Q', 'Z'] => 10
    }

  def initialize(word)
    @word = word || ''
    @word_score = 0
  end

  def self.score(word)
    Scrabble.new(word).score
  end

  def score
    @word.upcase.chars.each do |char|
      LETTER_SCORES.keys.each do |letters|
        if letters.include?(char)
          @word_score += LETTER_SCORES[letters]
        end
      end
    end
    @word_score
  end
end
```
