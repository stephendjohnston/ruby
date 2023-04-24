def fibonacci(n)
    return  n  if n <= 1 
    fibonacci( n - 1 ) + fibonacci( n - 2 )
end 

def find_fibonacci_index_by_length(number)
  index = 2

 while fibonacci(index).to_s.length != number
  index += 1
  end 
 index 
end

# My method is to slow calculating large numbers because of recursion
# LS version

def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(3) == 12 
p find_fibonacci_index_by_length(9) == 40
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847