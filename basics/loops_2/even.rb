# my answer

number = 0

until number == 10
  number += 1
  if number.even?
    puts number
  end
end

# LS answer

number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end
