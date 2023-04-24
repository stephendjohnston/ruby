greeting = 'Hello!'

greeting.replace 'Goodbye!'
puts greeting

# LS

greeting = 'Hello!'

greeting.gsub!('Hello', 'Goodbye')
puts greeting
