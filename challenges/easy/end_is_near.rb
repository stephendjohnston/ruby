def penultimate(string)
  string.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

# Further Exploration

def penultimate(string)
  return string if string.empty? || string.split.size == 1
  string_array = string.split
  
  if string_array.size % 2 == 0 
    result = string_array.size / 2
    string_array[result - 1] + ' ' + string_array[result]
  else 
    result = string_array.size / 2
    string_array[result]
  end
end
