# my code does not prompt the user with an error message
# if the input = 0 until after the user has input 2 integers

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

integer1 = nil
integer2 = nil 

loop do
  
  loop do
    puts 'Please enter a positive or negative integer:'
    integer1 = gets.chomp

    puts 'Please enter a positive or negative integer:'
    integer2 = gets.chomp

    break if valid_number?(integer1) && valid_number?(integer2) 
        puts "Invalid input. Only non-zero integers are allowed."
  end

  break if integer1.to_i * integer2.to_i < 0 
  puts 'Sorry. One integer must be positive, one must be negative. ' \
       'Please start over.'
end

result = integer1.to_i + integer2.to_i
puts "#{integer1} + #{integer2} = #{result}"


# LS solution

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts '>> Please enter a positive or negative integer:'
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end
end

first_number = nil
second_number = nil

loop do
  first_number = read_number
  second_number = read_number
  break if first_number * second_number < 0
  puts '>> Sorry. One integer must be positive, one must be negative.'
  puts '>> Please start over.'
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"