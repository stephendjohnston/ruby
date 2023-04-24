def featured(number)
  loop do 
    break if number > 9_876_543_210
    number += 1
    return number if number % 7 == 0 && 
           number.odd? && 
           number.digits.uniq.size == number.digits.size
  end
  "No possible solution"
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999)
