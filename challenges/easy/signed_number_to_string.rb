# if integer > 0, then prepend "+" to the string
# if integer < 0, then prepend "-" to the string, also have to remove 
# '-' sign on integer by multiplying by -1
# else do nothing

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(integer)
  numbers = ''

  loop do
    integer, remainder = integer.divmod(10)
    numbers.prepend(DIGITS[remainder])
    break if integer == 0
  end
  numbers
end

def signed_integer_to_string(integer)
  if integer > 0
    '+' + integer_to_string(integer)
  elsif integer < 0                   
    integer *= -1
    '-' + integer_to_string(integer)    # or integer_to_string(integer * -1)
  else
    integer_to_string(integer)
  end
end

# LS solution

def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'