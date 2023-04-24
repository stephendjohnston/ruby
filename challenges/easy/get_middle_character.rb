def center_of(string)
  return string if string.size == 1

  if string.size % 2 == 1
    index = string.size / 2
    string[index]
  else
    index = string.size / 2
    string[(index - 1)..index]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
