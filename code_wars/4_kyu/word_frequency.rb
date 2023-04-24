# Very somplifired version, only passes three test cases given in example

def top_3_words(text)
  occurrences = {} 
  text = text.downcase.delete(',/')
  text.split.each do |word|
    occurrences[word] = text.split.count(word)
  end

  occurrences = occurrences.sort_by {|_,v| v }.to_h

  if occurrences.keys.size >= 3 
    occurrences.keys.slice(-3..-1).reverse
  elsif occurrences.keys.size == 2
    occurrences.keys.slice(-2..-1).reverse
  elsif occurrences.keys.size == 1
    occurrences.keys.last
  else
    return []
  end
end

p top_3_words("In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.") == ["a", "of", "on"]
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
p top_3_words("  //wont won't won't") == ["won't", "wont"]
