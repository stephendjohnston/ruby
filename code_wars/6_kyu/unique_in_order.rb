=begin

inputs: string, array of integers, array of strings
outputs: same as input, but with duplicates of each sequence of same 
values removed.

examples: 
unique_in_order('AAAABBBCCDAABBB') == ['A','B','C','D','A','B']
unique_in_order([1,2,2,3,3])       == [1,2,3]

rules
- case sensitive
- keep same order
- return value is array

algorithm:
reduce each sequence of same value characters to just one character of
that sequence.

- 
  
=end

def unique_in_order(arg)
  (arg.is_a?(String) ? arg.chars : arg).chunk { |x| x }.map(&:first)
end

unique_in_order('AAAABBBCCDAABBB')
