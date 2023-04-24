# find the consonant substring in each string with the highest consonant 
# value ex 'zodiacs' z = 26, d = 4 cs = 22. 26 would be returned

ALPHABET = ('a'..'z').to_a

def values(substr)
  value = 0
  substr.each_char do |char|
    value += ALPHABET.index(char) + 1
  end
  value
end

def solve(string)
  consonant_array = string.split(/[aeiou]/)
  result = 0

  consonant_array.each do |substr|
    result = values(substr) if values(substr) > result
  end
  result
end

# one method solution

ALPHA = ('a'..'z').to_a

def solve(string)
  result = []
  vowels = %w(a e i o u)
  sum = 0

  string.chars.each do |char|
    result << ' ' if vowels.include?(char)
    result << char unless vowels.include?(char)
  end

  result.join.split.each do |str|
    current_sum = 0
    str.chars.each do |char|
      current_sum += ALPHA.index(char) + 1
    end
    sum = current_sum if current_sum > sum
  end
  sum
end

p solve('zodiacs') == 26
p solve('strength') == 57
p solve("chruschtschov") == 80
p solve("khrushchev") == 38
p solve("catchphrase") == 73
p solve("twelfthstreet") == 103
p solve("mischtschenkoana") == 80
