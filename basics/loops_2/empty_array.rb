# my answer

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop        # pop lists names last to first
  break if names.size == 0
end


# LS answer

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do 
  puts names.shift          # shift lists names first to last
  break if names.empty?
end

