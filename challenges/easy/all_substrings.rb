def substrings(string)
  result = []
  position = 0

  loop do 
    position.upto(string.size - 1) do |index|
      result << string[position..index]
    end
    
    position += 1
    break if position == string.size
  end
  result
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
