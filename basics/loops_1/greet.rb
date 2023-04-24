friends = ['Sarah', 'John', 'Hannah', 'Dave']
count = 0

for i in friends
  puts "Hello, #{friends[count]}!"
  count += 1
end

# ^ my original answer. Launch School answer below

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends 
  puts "Hello, #{friend}!"
end