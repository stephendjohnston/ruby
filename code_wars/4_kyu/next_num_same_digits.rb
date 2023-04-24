def next_bigger(n)
  n_array = n.to_s.chars.map(&:to_i)
  n_permutations = n_array.permutation.to_a
  join_n = n_permutations.map(&:join)

  bigger = join_n.select do |num|
    num.to_i > n
  end

  result = bigger.min {|num| num.to_i }.to_i
  return -1 if result == 0
  result
end

p next_bigger(12) == 21
p next_bigger(513) == 531
p next_bigger(2017) == 2071
p next_bigger(414) == 441
p next_bigger(144) == 414
p next_bigger(531) == -1
p next_bigger(7210) == -1
