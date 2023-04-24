# You are given an array (which will have a length of at least 3, but could
# be very large) containing integers. The array is either entirely comprised
# of odd integers or entirely comprised of even integers except for a single
# integer N. Write a method that takes the array as an argument and returns 
# this "outlier" N.

# Examples
# [2, 4, 0, 100, 4, 11, 2602, 36]
# Should return: 11 (the only odd number)

# [160, 3, 1719, 19, 11, 13, -21]
# Should return: 160 (the only even number)

def outlier(array)
  if array.count {|num| num.odd?} > 1
    array.find {|n| n.even? }
  else
    array.find {|n| n.odd? }
  end
end

p outlier([2, 4, 0, 100, 4, 11, 2602, 36]) == 11
p outlier([160, 3, 1719, 19, 11, 13, -21]) == 160