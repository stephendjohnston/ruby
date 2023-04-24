# Write a program that will calculate the number of trailing zeros in a 
# factorial of a given number.
# Example:
# zeros(6) = 1
# 6! = 1 * 2 * 3 * 4 * 5 * 6 = 720 --> 1 trailing zero

def zeros(n)
  return 0 if n == 0
  result = []
  sum = [*1..n].reduce(:*)

  sum.digits.each do |num|          # array is reversed so zeros are leading
    result << num if num == 0       # add zeros to result
    break if num != 0               # break if a number is not zero
  end
  result.size                       # returns number of zeros in result
end

p zeros(6)
p zeros(12)
p zeros(30)
