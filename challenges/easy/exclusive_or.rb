def xor?(condition_1, condition_2)
  if condition_1 == true && condition_2 == true
    false
  elsif condition_1 == true && condition_2 == false
    true
  elsif condition_1 == false && condition_2 == true
    true
  else
    false
  end
end


# LS solutions

# def xor?(value1, value2)
#   return true if value1 && !value2
#   return true if value2 && !value1
#   false
# end

# More idiomatic version

# def xor?(value1, value2)
#   (value1 && !value2) || (value2 && !value1)
# end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
