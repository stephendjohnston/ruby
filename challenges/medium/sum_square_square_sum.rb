def sum_square_difference(number)
  sum = []
  1.upto(number) do |num|
     sum << num
  end
  
  sum_squares = sum.map {|num| num ** 2}
  (sum.sum ** 2) - sum_squares.sum
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
