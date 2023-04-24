def halvsies(array)
  index = array.size / 2

  index += 1 if array.size % 2 == 1
    
  halved_array = []
  halved_array[0], halved_array[1] = array[0..index - 1], array[index..-1]
  halved_array
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]