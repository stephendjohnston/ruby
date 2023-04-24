def substrings_at_start(string)
  substring_array = []
  index = 0

  string.chars.each do 
    substring_array << string[0..index]
    index += 1
  end
  substring_array
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
