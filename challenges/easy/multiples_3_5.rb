# between 1 and some other number, and then computes the sum of those 
# multiples. For instance, if the supplied number is 20, the result should 
# be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20). You may assume that the 
# number passed in is an integer greater than 1.

# Examples
# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

# Data Structures:
# => inputs: integers > 1
# => outputs: integers

# Algorithm:
# determine the multiples of 3 and 5 up to a certain input number
# use upto to count from 1 to input number
# add num to empty array if num % 3 == 0 
# repeat same steps for number 5
# use uniq to delete array values that are the same
# use sum to add values in array
# print result


def multisum(number)
  multiples = []

  1.upto(number) do |num|
    multiples << num if num % 3 == 0
  end
    
  1.upto(number) do |num|
    multiples << num if num % 5 == 0
  end
  multiples.uniq.reduce(:+)

end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168