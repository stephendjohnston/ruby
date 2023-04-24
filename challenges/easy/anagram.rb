class Anagram
  attr_reader :initial_word

  def initialize(initial_word)
    @initial_word = initial_word
  end

  def match(list)
    list.select do |word|
      if letters_sorted == word.downcase.chars.sort
        word unless word.downcase == initial_word.downcase
      end
    end
  end

  private

  def letters_sorted
    initial_word.downcase.chars.sort
  end
end