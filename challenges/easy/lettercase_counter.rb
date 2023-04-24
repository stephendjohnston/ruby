def letter_case_count(string)
  characters = { lowercase: 0, uppercase: 0, neither: 0 }
  

  string.chars.each do |char|
    if ('a'..'z').cover?(char)
      characters[:lowercase] += 1
    elsif ('A'..'Z').cover?(char)
      characters[:uppercase] += 1
    else
      characters[:neither] += 1
    end
  end
  characters
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }