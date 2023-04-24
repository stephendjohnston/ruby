def clean_string(string)
  char_array = string.chars
  result = []

  loop do 
    char = char_array.shift
    char == '#' ? result.pop : result << char
    break if char_array.empty?
  end
  result.join
end

p clean_string('abc#d##c') == 'ac'
p clean_string('abc##d######') == ''
