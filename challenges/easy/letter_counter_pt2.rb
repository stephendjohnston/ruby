def word_sizes(string)
  occurrences = Hash.new(0)

  string.split.each do |element|
    clean_word = element.delete('^a-zA-Z')
    occurrences[clean_word.size] += 1
  end
  occurrences
end

p word_sizes('Four score and seven.') 
p word_sizes('Hey diddle diddle, the cat and the fiddle!') 
p word_sizes("What's up doc?")
p word_sizes('')