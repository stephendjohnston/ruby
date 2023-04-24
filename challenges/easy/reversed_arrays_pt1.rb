def reverse_list(array)
  index = array.size - 1
  reverse_array = []
  return array if array.empty?

  loop do 
    reverse_array << array[index]
    index -= 1
    break if index < 0
  end

  index = 0

  loop do 
    array[index] = reverse_array[index]
    index += 1
    break if index == array.size 
  end
  array
end


list = %w(a b e d c)
p reverse_list(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse_list(list) == ["abc"]
p list == ["abc"]

list = []
p reverse_list(list) == []
p list == []
