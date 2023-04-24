def triangle(number)
  spaces = number - 1
  stars = 1

  number.times do |num|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

triangle(5)
triangle(9)