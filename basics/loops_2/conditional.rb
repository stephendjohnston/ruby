process_the_loop = [true, false].sample

if process_the_loop == false
  puts "The loop was processed!"
else process_the_loop == true
  puts "The loop wasn't processed!"
end

# my answer, didn't use a loop, oops. LS answer below.

process_the_loop = [true, false].sample

if process_the_loop
  loop do 
    puts "The loop was processed!"
    break
  end
else
  puts "The loop wasn't processed!"
end
