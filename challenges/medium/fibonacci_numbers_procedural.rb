def fibonacci(number)
  return 1 if number <= 2
  counter = 2
  sum = 0
  first = 1
  second = 1

  loop do 
    sum = first + second
    first = second
    second = sum
    counter += 1
    break if counter >= number
  end
  sum
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
fibonacci(100_001)
