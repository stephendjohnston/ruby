def triangle(side1, side2, side3)
  lengths = [side1, side2, side3].sort
  return :invalid if lengths.any? { |num| num == 0 }
  return :invalid if (lengths[0] + lengths[1]) <= lengths[2]
  return :equilateral if lengths.all? { |num| num == side1 }
  return :isosceles if lengths.uniq.size == 2
  return :scalene if (lengths[0] + lengths[1]) > lengths[2]
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
