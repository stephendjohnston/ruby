def top_half(number)
  spaces = number / 2
  star = number - (spaces * 2)
  top = (number + 1)/ 2

  top.times do |n|
    puts (' ' * spaces) + ('*' * star)
    spaces -= 1
    star += 2
  end
end

def bottom_half(number)
  spaces = number - (number - 1)
  star = number - 2
  bottom = number / 2

  bottom.times do |n|
    puts (' ' * spaces) + ('*' * star)
    spaces += 1
    star -= 2
  end
end

def diamond(number)
  top_half(number) + bottom_half(number)
end

diamond(1)
diamond(3)
diamond(9)
