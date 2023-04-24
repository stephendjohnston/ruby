=begin

find the number that is not like the others. A single even number
amongst odd numbers or vice versa

inputs: string of numbers
outputs: integer (index of number that doesn't belong. index starts at 1)  

algorithm:

- split the string into an array of digits
- count how many odd/even numbers there are
- at the end of the count, odd or even count should == 1
- 
  
=end

def iq_test(numbers)
  odd_numbers = []
  even_numbers = []
  number_array = numbers.split(' ').map(&:to_i)

  number_array.each do |num|
    odd_numbers << num if num.odd?
    even_numbers << num if num.even?
  end

  if odd_numbers.size == 1
    number_array.index(odd_numbers.first) + 1
  else
    number_array.index(even_numbers.first) + 1
  end
end

p iq_test("2 4 7 8 10")
p iq_test("1 2 2")
