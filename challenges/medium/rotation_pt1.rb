def rotate_array(array)
  array[1..-1] + [array[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3 ,4] # => true


def rotate_string(string)
  rotate_array(string.chars).join
end

p rotate_string("hello")

def rotate_integer(integer)
  rotate_array(integer.to_s.chars).join.to_i
end

p rotate_integer(736)
