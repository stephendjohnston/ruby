stoplight = ['green', 'yellow', 'red'].sample


case stoplight
when 'green'  then puts 'Go!'
when 'yellow' then puts 'Slow down!'
else               puts 'Stop!'
end


=begin

If you compare the before and after, you'll notice the significant 
difference in format. And hopefully, you can see that the latter is 
much easier to comprehend. This is largely due to how we spaced out 
each piece of code. Notice how both then keywords are aligned vertically,
as well as all three #puts. Formatting this way may take time to get used to,
but it will surely be beneficial the next time someone reads your code, 
even if that person is you.
  
#end