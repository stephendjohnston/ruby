DIGITS = {
  '0'=> 0, '1'=> 1, '2'=> 2, '3'=> 3, '4'=> 4,
  '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9
 }

def string_to_signed_number(string)
  negative = 1

  if string[0] == '+'
    string.delete!('+')
  elsif string[0] == '-'
    negative = -1
    string.delete!('-')
  else
  end

  digits = string.chars.map { |char| DIGITS[char]}

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value * negative
end

# LS solution

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char]}

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])     # The most interesting aspect of this method is the use of string[1..-1] to obtain the remainder of the string after a leading + or -. This notation simply means to extract the characters starting at index 1 of the string (the second character) and ending with the last character (index -1).
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

p string_to_signed_number('4321') == 4321
p string_to_signed_number('-570') == -570
p string_to_signed_number('+100') == 100