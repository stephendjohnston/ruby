def is_valid_walk(walk)
  return false if walk.size != 10
  directions = Hash.new(0)

  walk.each do |direction|
    directions[direction] += 1
  end
  north_south = directions['n'] - directions['s']
  east_west = directions['e'] - directions['w']
  north_south == 0 ? east_west == 0 ? true : false : false
end

p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n', 'n', 's', 's', 'e', 'e', 'e', 'e', 'w', 'e'])
