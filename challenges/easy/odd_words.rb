def odds_reversed(string)
  return '' if string.empty?

  array_of_words = string.split(/\W+/)

  result = array_of_words.map.with_index do |word, idx|
    idx.odd? ? word.reverse : word
  end
  result.join(' ') + '.'
end

p odds_reversed('')
p odds_reversed('.')
p odds_reversed('whats')
p odds_reversed('whats the matter with kansas.')
p odds_reversed('whats the matter   with kansas.')
p odds_reversed('whats   the  matter with kansas .')
p odds_reversed('whats the matter with kansas   .')