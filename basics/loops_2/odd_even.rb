count = 0

loop do
  count += 1
  break if count > 5
  if count.odd? 
  puts "#{count} is odd"
else
  puts "#{count} is even"
  end
end


# my answer after 45 mins. LS answer below.
# Had to end 'if' statement before the break.

count = 1

loop do
  if count.even?
    puts "#{count} is even!"
  else
    puts "#{count} is odd!"
  end

  break if count == 5
  count += 1
end

# student answer below

count = 1

loop do
  puts "#{count} is " + (count.odd? ? "odd!" : "even!")
  break if count >= 5
  count += 1
end


