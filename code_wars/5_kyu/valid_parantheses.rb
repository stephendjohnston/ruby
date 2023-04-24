def valid_parentheses(string)
  brackets = 0 

  string.chars.each do |char|
    brackets += 1 if char == '('
    brackets -= 1 if char == ')'
    return false if brackets < 0
  end
  brackets == 0
end

p valid_parentheses("  (")
p valid_parentheses(")test")
p valid_parentheses("")
p valid_parentheses("hi())(")
p valid_parentheses("hi(hi)()")
