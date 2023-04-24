# Complete the function scramble(str1, str2) that returns true if a portion 
# of str1 characters can be rearranged to match str2, otherwise returns 
# false.

# Notes:

# Only lower case letters will be used (a-z). No punctuation or digits will
# be included.

# Performance needs to be considered
# Input strings s1 and s2 are null terminated.

# Examples:
# scramble('rkqodlw', 'world') ==> True
# scramble('cedewaraaossoqqyt', 'codewars') ==> True
# scramble('katas', 'steak') ==> False

def scramble(str1, str2)
  str2.each_char do |char|
    return false if str1.count(char) < str2.count(char)
  end
  true
end

p scramble('rkqodlw','world') == true 
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas', 'steak') == false
