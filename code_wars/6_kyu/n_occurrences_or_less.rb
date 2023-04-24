def delete_nth(array, n)
  result = []

  array.each do |num|
    result << num unless result.count(num) >= n
  end
  result
end

p delete_nth([1,1,3,3,7,2,2,2,2], 3) 
p delete_nth([20,37,20,21], 1)
