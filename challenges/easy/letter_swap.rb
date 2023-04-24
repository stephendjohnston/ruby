def swap(sentence)
  words = []

  sentence = sentence.split(' ')

  sentence.each do |word| 
    if word.length == 1
      words << word 
    else
      first_letter = word[0]
      last_letter = word[-1]
      words << last_letter + word[1..-2] + first_letter
    end
  end
  words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
