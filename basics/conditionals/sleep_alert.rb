status = ['awake', 'tired'].sample

if status == 'awake'
    puts "Be productive!"
  elsif
    puts "Go to sleep!"
  else
end

p status

# LS solution

alert = if status == 'awake'
          'Be productive!'
        else
          'Go to sleep!'
        end

puts alert

=begin 
So far, we've been using if statements to print strings directly 
within the clauses. In this exercise, we aren't printing the string immediately,
instead, we're returning the string to be printed at a later time.
We can do this quite easily by saving the return value of the if 
statement to a variable.

If you think about this, a lot of time and space can be saved by
structuring your code this way. Instead of repeating #puts twice,
or many times, you only have to invoke it once.
=end