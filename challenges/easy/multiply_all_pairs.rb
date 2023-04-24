def multiply_all_pairs(array1, array2)
  product_array = []
  index = 0
  loop do
    array2.each do |num|
      product_array << num * array1[index]
    end
    index += 1
    break if index == array1.size
  end
  product_array.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
