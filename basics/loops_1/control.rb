iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

#or

iterations = 5

iterations.times { |iterations| puts "Number of iterations = #{iterations}"}

#or

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break if iterations == 5
  iterations += 1
end

#or

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  if iterations > 4
    break
  end
  iterations += 1
end

#or

iterations = 1

while iterations <= 5 do
  puts "Number of iterations = #{iterations}"
  iterations += 1
end

