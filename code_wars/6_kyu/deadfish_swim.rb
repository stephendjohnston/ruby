# Write a simple parser that will parse and run Deadfish.

# Deadfish has 4 commands, each 1 character long:

# i increments the value (initially 0)
# d decrements the value
# s squares the value
# o outputs the value into the return array
# Invalid characters should be ignored.

def parse(data)
  sum = 0
  result = []

  data.chars.each do |command|
    case command
    when 'i' then sum += 1
    when 'd' then sum -= 1
    when 's' then sum *= sum
    when 'o' then result << sum
    end
  end
  result
end

p parse('iiisdoso') == [8, 64]
p parse("ooo") == [0, 0, 0]
p parse("ioioio") == [1, 2, 3]
p parse("idoiido") ==  [0, 1]
p parse("isoisoiso") == [1, 4, 25]
p parse("codewars") == [0]
