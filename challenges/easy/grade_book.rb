def get_grade(num1, num2, num3)
  average = (num1 + num2 + num3) / 3

  case 
  when average >= 90 && average <= 100
    'A'
  when average >= 80 && average < 90
    'B'
  when average >= 70 && average < 80
    'C'
  when average >= 60 && average < 70
    'D'
  else
    'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
