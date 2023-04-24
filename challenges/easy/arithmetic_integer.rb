# Write a program that prompts the user for two positive integers, and 
# then prints the results of the following operations on those two numbers:
# addition, subtraction, product, quotient, remainder, and power. 
# Do not worry about validating the input.

# Examples:
# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

# Data Structures: 
# => inputs: integer
# => outputs: integer

# Algoritm:
# ask the user for 2 numbers
# perform the operations using the 2 numbers 
# output the calculations

puts "==> Enter the first number:"
num_1 = gets.chomp.to_f

num_2 = nil
loop do
puts "==> Enter the second number:"
num_2 = gets.chomp.to_f

  break if num_2 != 0
end
  

puts "==> #{num_1} + #{num_2} = #{num_1 + num_2}"
puts "==> #{num_1} - #{num_2} = #{num_1 - num_2}"
puts "==> #{num_1} * #{num_2} = #{num_1 * num_2}"
puts "==> #{num_1} / #{num_2} = #{num_1 / num_2}"
puts "==> #{num_1} % #{num_2} = #{num_1 % num_2}"
puts "==> #{num_1} ** #{num_2} = #{num_1 ** num_2}"