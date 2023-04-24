def interleave(array_1, array_2)
  combined_array = []
  iterator = 0

  while array_1.size > 0
    combined_array[iterator] = array_1.shift
    iterator += 1
    combined_array[iterator] = array_2.shift
    iterator += 1
  end
  combined_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) 
