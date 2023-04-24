def add(a, b)
  a + b
end

def multiply(c, d)
  c * d
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36

# parameters for each method defintion could be same characters.