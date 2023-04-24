def count_deaf_rats(town)
  left, pp, right = town.delete(' ').partition('P')
  (left + right.reverse).scan(/../).count('O~')
end

p count_deaf_rats('~O~O~O~OP~O~OO~') == 2
p count_deaf_rats('P O~ O~ ~O O~') == 1
p count_deaf_rats('~O~O~O~O P') == 0
p count_deaf_rats('PO~~O~O~O~O~O~OO~~O~O~O~O~O~OO~O~~O~O~OO~  ~O ~O~O~O~O~O~O~O~OO~O~~O~O~O~O') == 28
p count_deaf_rats('O~~OO~O~O~O~~OO~O~O~O~ ~O~OP') == 9

# My original solution

def count_deaf_rats(town)
  town.delete!(' ')
  pied_piper_index = town.index('P')
  if pied_piper_index == 0
    return deaf_rats = town[1..-1].scan(/../).count('~O')
  end
  first_half = town[0..pied_piper_index - 1]
  back_half = town[pied_piper_index + 1..-1]
  deaf_rats = first_half.scan(/../).count('O~') + back_half.scan(/../).count('~O')
end
