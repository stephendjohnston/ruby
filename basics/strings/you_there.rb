colors = 'blue pink yellow orange'

puts colors.split(' ').include?('yellow')

puts colors.split(' ').include?('purple')

# LS: split not needed in this case

colors = 'blue pink yellow orange'

puts colors.include?('yellow')
puts colors.include?('purple')