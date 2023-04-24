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