def anagrams(word, array)
  result = []
  anagrams = word.chars.permutation.to_a.uniq.map(&:join)
  array.each do |string|
    result << string if anagrams.include?(string)
  end
  result  
end

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []
