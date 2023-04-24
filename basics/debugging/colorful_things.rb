
colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > things.length - 1    # or i == things.length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

# line 10 used to read:
# break if i > colors.length
# Because Arrays have a zero-based index, this results in colors[i]
# accessing one position after the last one. Since that position doesn't
# exist, colors[i] returns nil
# things is a shorter array which is why it is used