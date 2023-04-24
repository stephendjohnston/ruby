UPPER = ('A'..'Z')
LOWER = ('a'..'z')

def swapcase(string)
  swapped = string.chars.map do |char|
    if UPPER.include?(char)
      char.downcase
    elsif LOWER.include?(char)
      char.upcase 
    else
      char
    end
  end
  swapped.join('')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'