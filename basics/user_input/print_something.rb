# print something part 2
# my solution

loop do 
  puts "Do you want the program to print something? (y/n)"
  answer = gets.chomp.downcase
if answer == "y"
  puts "something"
  break
elsif answer == "n"
  puts "nothing"
  break
else 
  puts "Please enter a valid repsonse. (y/n)"
end
end

#LS solution

choice = nil
loop do
  puts '>> Do you want me to print something? (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)         # syntax shorcut for array
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == 'y'