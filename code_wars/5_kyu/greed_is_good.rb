def score(dice)
  dice_counted = dice.each_with_object({}) do |die, hash|
    hash[die] = dice.count(die)
  end

  current_value = 0
  dice_counted.keys.each do |dice_value|
    case dice_value
    when 1 
      if dice_counted[1] == 3
        current_value += 1000
      elsif dice_counted[1] <= 2
        dice_counted[1].times {|_| current_value += 100}
      else
        current_value += 1000
        dice_counted[1] -= 3
        dice_counted[1].times {|_| current_value += 100 }
      end
    when 2 
      if dice_counted[2] >= 3
        current_value += 200
      end
    when 3
      if dice_counted[3] >= 3
        current_value += 300
      end
    when 4
      if dice_counted[4] >= 3
        current_value += 400
      end
    when 5 
      if dice_counted[5] == 3
        current_value += 500
      elsif dice_counted[5] <= 2
        dice_counted[5].times {|_| current_value += 50 }
      else 
        current_value += 500
        dice_counted[5] -= 3
        dice_counted[5].times {|_| current_value += 50 }
      end
    when 6 
      if dice_counted[6] >= 3
        current_value += 600
      end
    end
  end
  current_value
end

# CODE WAR SOLTUTION

GREED_SCORES = {
  1 => [0, 100, 200, 1000, 1100, 1200],
  2 => [0, 0, 0, 200, 200, 200],
  3 => [0, 0, 0, 300, 300, 300],
  4 => [0, 0, 0, 400, 400, 400],
  5 => [0, 50, 100, 500, 550, 600],
  6 => [0, 0, 0, 600, 600, 600]
}

def score(dice)
  GREED_SCORES.keys.inject(0) do |score, key|
    score + GREED_SCORES[key][dice.count(key)]
  end
end

p score([2, 2, 2, 3, 3])
p score([3, 1, 6, 1, 2])
p score([2, 3, 4, 6, 2])
p score([2, 4, 4, 5, 4])
