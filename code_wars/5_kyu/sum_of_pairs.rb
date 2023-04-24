def sum_pairs(array, sum)
  return nil if array == []
  inner_idx = 0
  outer_idx = 1
  result = []
  indices = []

  loop do 
    
    loop do
      if array[inner_idx] + array[outer_idx] == sum
        result << [array[inner_idx]] + [array[outer_idx]]
        indices << [inner_idx, outer_idx]
      end
      outer_idx += 1
      break if outer_idx >= array.size
      
    end
    inner_idx += 1
    outer_idx = inner_idx + 1

    break if inner_idx >= array.size - 1
  end

  return nil if result.empty?
  return result.first if result.size == 1
  index = indices[0][1]
  result_index = 0 

  indices.each_with_index do |arr, idx|
    result_index = idx if arr.last < index
  end

  result[result_index]
end

p sum_pairs([11, 3, 7, 5], 10) == [3, 7]
p sum_pairs([4, 3, 2, 3, 4], 6) == [4, 2]
p sum_pairs([10, 5, 2, 3, 7, 5], 10) == [3, 7]
p sum_pairs([1, 4, 8, 7, 3, 15], 8) == [1, 7]
p sum_pairs([1, -2, 3, 0, -6, 1], -6) == [0, -6]
p sum_pairs([20, -13, 40], -7) == nil
p sum_pairs([1, 2, 3, 4, 1, 0], 2) == [1, 1]
p sum_pairs([10, 5, 2, 3, 7, 5], 10) == [3, 7]
p sum_pairs([4, -2, 3, 3, 4], 8) == [4, 4]
p sum_pairs([0, 2, 0], 0) == [0, 0]
p sum_pairs([5, 9, 13, -3], 10) == [13, -3]
