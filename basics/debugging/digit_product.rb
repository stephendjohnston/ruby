def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1   # changed from 0 to 1 because duh

  digits.each do |digit|
    product *= digit
  end

  product
end


p digit_product('12345')