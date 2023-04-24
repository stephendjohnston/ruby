def panagram?(string)
  letters_hash = {}
  letters_array = string.downcase.chars.delete_if {|char| char =~ /[\d]|[\W]/}
  
  letters_array.each do |char|
    letters_hash[char] = letters_array.count(char)
  end

  if letters_hash.size == 26
    letters_hash.values.all? {|value| value >= 1}
  else
    false
  end
end

p panagram?("The quick brown3 fox jumps, over the lazy dog.")
p panagram?("This is not a pangram.")