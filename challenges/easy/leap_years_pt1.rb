# In the modern era under the Gregorian Calendar, leap years occur in every
# year that is evenly divisible by 4, unless the year is also divisible by
# 100. If the year is evenly divisible by 100, then it is not a leap year 
# unless the year is evenly divisible by 400. Assume this rule is good for
# any year greater than year 0. Write a method that takes any year greater 
# than 0 as input, and returns true if the year is a leap year, or false  
# if it is not a leap year.

# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == false
# leap_year?(1) == false
# leap_year?(100) == false
# leap_year?(400) == true

# Data structures:
# => inputs: integer > 0
# => outputs: boolean

# Algorithm:
# use if/else and || and && to determine if the year entered can satisfy all of the requirements
# if year % 4 == 0 => leap year
# if year % 4 == 0 && year % 100 == 0 => not leap year
# if year % 100 == 0 && year % 400 == 0 => leap year 

def leap_year?(year)
  case year
  when year % 4 == 0 && year % 400 == 0     # each statement could be reduced, don't need to include the % 4 until the end
    true
  when year % 4 == 0 && year % 100 == 0
    false
  else year % 4 == 0
    true
  end
end

# LS uses same solution with if/else reduced clauses
# they have a shorter version below

def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
