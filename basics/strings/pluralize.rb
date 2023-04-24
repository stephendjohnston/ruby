words = 'car human elephant airplane'

words.split.each { |a| puts a + 's'}

# LS

words = 'car human elephant airplane'

words.split(' ').each do |word|
  puts word + 's'
end
