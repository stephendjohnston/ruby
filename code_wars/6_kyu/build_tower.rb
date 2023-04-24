def add_spaces(array, floors)
  (0..floors - 1).map do |floor|
    "#{' ' * floor}#{array.reverse[floor]}#{' ' * floor}"
  end.reverse
end

def towerBuilder(n_floors)
  adder = 1
  result = []

  n_floors.times do |floor|
    result << '*' * (floor + adder)
    adder += 1
  end

  add_spaces(result, n_floors)
end

# Top Codewar

def towerBuilder(n)
  (1..n).map do |i|
    space = ' ' * (n - i)
    stars = '*' * (i * 2 - 1)
    space + stars + space
  end
end

p towerBuilder(2)
p towerBuilder(3)
p towerBuilder(6)
