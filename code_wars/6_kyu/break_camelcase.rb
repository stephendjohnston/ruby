# Complete the solution so that the function will break up camel casing, using a space between words.

# solution("camelCasing")  ==  "camel Casing"

ALPHA = ('A'..'Z').to_a

def solution(string)
  result = ''

  string.chars.each do |char|
    if ALPHA.include?(char)
      result += ' ' + char 
    else
      result += char 
    end
  end
  result
end

p solution("camelCasing")  ==  "camel Casing"
