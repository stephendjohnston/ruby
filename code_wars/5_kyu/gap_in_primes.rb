def prime?(num)
  (2..(num - 1)).each do |divisor|
    return false if num % divisor == 0
  end
  true
end

def is_prime?(num1, num2)
  (num1..num2).select do |num|
    prime?(num)
  end
end

def prime_gap(gap, start, stop)
  return nil if start == stop
  primes_array = is_prime?(start, stop)
  index = 1

  primes_array.select do |num|
    if primes_array[index] - num == gap
      return num, primes_array[index]
    end
    break if index >= primes_array.size - 1
    index += 1
  end
  nil
end

p prime_gap(2, 5, 5)
p prime_gap(2, 3, 50)
p prime_gap(4, 130, 200)
p prime_gap(6, 100, 110)
p prime_gap(8 ,300 ,400)
p prime_gap(10, 300, 400)
