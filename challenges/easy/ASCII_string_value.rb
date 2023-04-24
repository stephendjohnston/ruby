def ascii_value(string)
  character_values = []

  string.chars.each do |char|
    character_values << char.ord
  end
  character_values.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0