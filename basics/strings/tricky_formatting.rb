state = 'tExAs'.capitalize!

puts state

# LS: correct because it modifies the value of state before and 
# after method is passed

state = 'tExAs'

state.capitalize!
puts state