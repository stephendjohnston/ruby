VOWELS = "aeiou"

def encode(s)
  s.gsub(/[aeiou]/) { |char| VOWELS.index(char) + 1 }
end

def decode(s)
  s.gsub(/[1-5]/) { |char| VOWELS[char.to_i - 1]}
end

# Top Codewar 

def encode(s)
  s.tr("aeiou", "12345")
end

def decode(s)
  s.tr("12345", "aeiou")
end

p encode('hello') == 'h2ll4'
p encode('How are you today?') == 'H4w 1r2 y45 t4d1y?'
p encode('This is an encoding test.') == 'Th3s 3s 1n 2nc4d3ng t2st.'
p decode('h2ll4') == 'hello'
