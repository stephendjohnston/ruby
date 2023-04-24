def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(digits, n)
  all_digits = digits.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(number)
  count = number.to_s.size

  loop do 
   number = rotate_rightmost_digits(number, count)
    count -= 1
    break if count == 0
  end
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 
p max_rotation(8_703_529_146) == 7_321_609_845
