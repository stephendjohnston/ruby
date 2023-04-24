def predict_weather
  sunshine = ['true', 'false'].sample
end

  if predict_weather == 'true'
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end

# In order for the method to behave as expected, we should assign 
# sunshine to the Boolean true or false instead of the string 'true' or 'false'.

# LS 'un-strings' values in sunshine because...
# In the given code sample, the value referenced by sunshine will always 
# be a String object. All objects in Ruby except for nil and the Boolean 
# false evaluate as true. Therefore, the condition provided to our if 
# statement on line 4 will always be truthy, and thus the code on line 5 will
# always be executed.

# LS Solution is simpler and straightforward, but both ways work.

def predict_weather
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end