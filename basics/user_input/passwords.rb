# my solution

PASSWORD = "hello"

loop do
  puts "Please enter your password:"
answer = gets.chomp
if answer == password       #use break if statement and puts "welcome outside of scope"
  puts "Welcome, Stephen!"
  break
else
  puts "Invalid passord. Try again."
end
end

# LS solution

PASSWORD = 'SecreT'

loop do
  puts '>> Please enter your password:'
  password_try = gets.chomp
  break if password_try == PASSWORD
  puts '>> Invalid password!'
end

puts 'Welcome!'