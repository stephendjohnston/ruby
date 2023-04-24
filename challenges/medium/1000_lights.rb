def lights(switches)
  switches_array = (1..switches).to_a
  lights_on = (1..switches).to_a
  switch_index = 1
  modifier = 2
  
  loop do
    loop do
      current_light = switches_array[switch_index]   

      if lights_on.include?(current_light)
         lights_on.delete(current_light)
      else
         lights_on << current_light
      end

      switch_index += modifier
      break if switch_index >= switches_array.size
    end

    switch_index = modifier
    modifier += 1
    break if switch_index >= switches_array.size
  end
  lights_on
end

p lights(10)
p lights(5)
p lights(20)
p lights(1000)
