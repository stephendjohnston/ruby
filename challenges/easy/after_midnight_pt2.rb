MINUTES_PER_HOUR = 60

def after_midnight(delta_time)
  time = delta_time.split(':').map(&:to_i)

  minutes = (time[0] * MINUTES_PER_HOUR) + time[1]
  if minutes == 1440
    minutes = 0
  else
    minutes
  end
end 

def before_midnight(delta_time)
  time = delta_time.split(':').map(&:to_i)

  minutes = (time[0] * MINUTES_PER_HOUR) - time[1]
  if minutes == 1440
    minutes = 0
  else
    minutes
  end
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
