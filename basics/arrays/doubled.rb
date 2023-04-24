numbers = [1, 2, 3, 4, 5]

doubled_numbers = numbers.map { |num| num * 2 }

puts doubled_numbers

# LS uses map do method, same concept, different syntax/code

numbers = [1, 2, 3, 4, 5]

doubled_numbers = numbers.map do |number|
                    number * 2
                  end

p doubled_numbers