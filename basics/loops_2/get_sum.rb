loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4 
    puts "That's correct!"      #end if statement
    break
  else
    puts "That's incorrect, try again!"
  end
end

# my answer - remember to end if statement after break before end of loop
# LS answer below

loop do 
  puts "What does 2 + 2 equal?"
  answer = gets.chomp.to_i

  if answer == 4 
    puts "That's correct!"  
    break
  end

  puts "Wrong answer. Try again!"
end