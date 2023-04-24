def fizzbuzz(start, finish)
  result = []
  start.upto(finish) do |num|
    if num % 5 == 0 && num % 3 == 0
      result << "FizzBuzz"
    elsif num % 5 == 0
      result << "Buzz"
    elsif num % 3 == 0
      result << "Fizz"
    else
      result << num
    end
  end
  result.join(', ')
end

p fizzbuzz(1, 15) 
