def narcissistic?(value)
  value.digits.map {|num| num**value.to_s.size }.sum == value
end

# Top Codewar solution

def narcissistic?( value )
  value == value.to_s.chars.map { |x| x.to_i**value.to_s.size }.reduce(:+)
end

p narcissistic?(153)
p narcissistic?(1633)
p narcissistic?(1634)
