LETTERS = { B: 'O', X: 'K', D: 'Q', C: 'P', N: 'A', 
  G: 'T', R: 'E', F: 'S', J: 'W', H: 'U',
  V: 'I', L: 'Y', Z: 'M' }

def block_word?(string)
  letters = LETTERS
  string = string.upcase
  compare_letters = []

  letters.each do |k,_|
    compare_letters << k.to_s if string.include?(k.to_s)
  end
  letters = letters.delete_if {|k, v| compare_letters.include?(k.to_s) || compare_letters.include?(v) }
  
  letters.each do |_, v|
    compare_letters << v if string.include?(v)
  end

 compare_letters.sort == string.chars.sort
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
