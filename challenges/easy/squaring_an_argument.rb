def multiply(number1, number2)
  number1 * number2
end

def square(number)
  multiply(number, number)
end

# Further exploration

# LS Student solutions

def power(number, n)
  multiply(number, number) * (number.to_f ** (n - 2))
end

def power(base, exp)
  result = 1
  exp.times { |_| result = multiply(result,base) }
  result
end

puts square(5)
puts square(-8)

puts power(3, 3)
puts power(5, 1)