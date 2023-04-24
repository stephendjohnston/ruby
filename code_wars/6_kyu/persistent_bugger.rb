# Write a function, persistence, that takes in a positive parameter num and 
# returns its multiplicative persistence, which is the number of times you
# must multiply the digits in num until you reach a single digit.

# For example:

# persistence(39)  returns 3, because 3*9=27, 2*7=14, 1*4=4
#                  and 4 has only one digit

# persistence(999)  returns 4, because 9*9*9=729, 7*2*9=126,
#                   1*2*6=12, and finally 1*2=2

# persistence(4) # returns 0, because 4 is already a one-digit number

def persistence(n)
  counter = 0
  while n >= 10
    n = n.to_s.chars.map(&:to_i).reduce(:*)
    counter += 1
  end
  counter
end

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4
