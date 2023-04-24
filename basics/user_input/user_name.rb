USERNAME = 'Bob'
PASSWORD = 'burGers'

loop do
  puts 'Please enter your user name:'
  try_name = gets.chomp
  
  puts 'Please enter your password:'
  try_password = gets.chomp
  
  break if try_name == USERNAME && try_password == PASSWORD
  puts "Password/Username Invalid, please try again:"
end

puts "Welcome, #{USERNAME}!"

# LS solution

USERNAME = 'admin'
PASSWORD = 'SecreT'

loop do
  puts '>> Please enter your user name:'
  user_name = gets.chomp

  puts '>> Please enter your password:'
  password_try = gets.chomp

  break if user_name == USERNAME && password_try == PASSWORD
  puts '>> Authorization failed!'
end

puts 'Welcome!'