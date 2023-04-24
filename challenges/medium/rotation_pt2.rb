def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_integer(integer)
  rotate_array(integer.to_s.chars).join.to_i
end

def rotate_rightmost_digits(digits, rightmost)
  digits_ary = digits.to_s.chars
  result = digits_ary[0..-rightmost - 1] + rotate_array(digits_ary[-rightmost..-1])
  result.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
