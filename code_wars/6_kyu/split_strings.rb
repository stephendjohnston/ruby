def split_strings(string)
  return [] if string.empty?
  pairs = string.chars.each_slice(2).map(&:join)
  pairs[-1].size == 1 ? pairs[-1] = pairs[-1] + '_' : pairs
  pairs
end

p split_strings('abc') == ['ab', 'c_']
p split_strings('abcdef') == ['ab', 'cd', 'ef']
p split_strings("") == []
