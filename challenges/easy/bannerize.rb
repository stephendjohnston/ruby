def print_in_box(sentence)
  dashed_line = "+#{'-' * (sentence.length + 2)}+"
  empty_line = "|#{' ' * (sentence.length + 2)}|"

  puts dashed_line
  puts empty_line
  puts "| #{sentence} |"
  puts empty_line
  puts dashed_line
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')