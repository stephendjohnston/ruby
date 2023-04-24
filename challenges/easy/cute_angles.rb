DEGREE = "\xC2\xB0"

def dms(number)
  number = number % 360
  degrees = number - (number - number.to_i)
  d_to_m = (number - number.to_i) * 60
  minutes = d_to_m - (d_to_m - d_to_m.to_i)
  seconds = (d_to_m - d_to_m.to_i) * 60

  format(%(#{degrees.to_i}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(30) == %(30°00'00") 
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°35'59")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")