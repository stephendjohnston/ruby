# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century number, 
# and ends with st, nd, rd, or th as appropriate for that number. 
# New centuries begin in years that end with 01. So, the years 1901-2000 
# comprise the 20th century.

# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

# Data structures:
# => inputs: integer
# => output: string that ends with appropriate abbreviation

# Algorithm:
# how do we determine current century?
# => use divmod to determine century
# => divide input by 100
# => if remainder > 0, century = number + 1
# determine how to add correct abbreviations to century
# use string indices to determine which abbreviations get used with specific centuries
# if/else or case statement??

def century(year)
  
  century, remainder = year.divmod(100)
  if remainder > 0
    century += 1 
  else 
   century
  end

  if century.to_s[-2] == "1"
    "#{century}th century"
  else
    case
    when century.to_s[-1] == "1"
      "#{century}st century"
    when century.to_s[-1] == "2"
      "#{century}nd century"
    when century.to_s[-1] == "3"
      "#{century}rd century"
    else 
      "#{century}th century"
    end
  end
end

# LS Solution

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

p century(2000) 
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
p century(1052)
p century(1127)
p century(11201)