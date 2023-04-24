numbers = {
  high:   100,
  medium: 50,
  low:    10

  }
half_numbers = []       # this is not needed as .map will automatically return an array

half_numbers = numbers.map { |k, v| v / 2}


p half_numbers

# LS

half_numbers = numbers.map do |key, value|
                 value / 2
               end

p half_numbers
