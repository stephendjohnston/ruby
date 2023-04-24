class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words_array.each_with_object(Hash.new(0)) do |word, count|
      word.delete!("'") if word[0] == "'"
      count[word] += 1
    end
  end

  private

  def words_array
    @phrase.downcase.split(/[^a-z0-9']/).delete_if {|word| word == ''}
  end
end