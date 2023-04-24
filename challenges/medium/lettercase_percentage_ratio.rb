def lowercase(string)
  string.count('a-z') * 100.0
end

def uppercase(string)
  string.count('[A-Z]') * 100.0
end

def neither(string)
  string.chars.count { |char| char =~ /[\d\W]/ } * 100.0
end

def letter_percentages(string)
  total_characters = string.chars.count

  { lowercase: (lowercase(string)/total_characters).round(2), 
    uppercase: (uppercase(string)/total_characters).round(2),
    neither: (neither(string)/total_characters).round(2) }
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI') == { lowercase: 66.67, uppercase: 33.33, neither: 0.0}
