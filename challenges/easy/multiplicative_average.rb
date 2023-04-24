def show_multiplicative_average(array)
  total = array.reduce(:*).to_f
  average = total / array.size
  puts format('%.3f', average)
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
