WINNING_SQUARE = 100
LADDERS = {2 => 38, 7 => 14, 8 => 31, 15 => 26, 21 => 42, 28 => 84, 36 => 44,
           51 => 67, 71 => 91, 78 => 98, 87 => 94}
SNAKES = {16 => 6, 49 => 11, 62 => 19, 46 => 25, 74 => 53, 64 => 60, 89 => 68,
          95 => 75, 99 => 80, 92 => 88}
DICE = [1, 2, 3, 4, 5, 6]

def roll_dice
  total_roll = []
  2.times do 
    total_roll << DICE.sample
  end
  total_roll.sum
end

player1_square = 0
player2_square = 0

#GAME LOOP
loop do 
  #PLAYER 1 Turn
  back_track = 0
  loop do
    
    current_roll_sum = roll_dice
    player1_square += current_roll_sum
    if player1_square > WINNING_SQUARE
      back_track = player1_square - WINNING_SQUARE 
      player1_square -= (back_track * 2)
    end  

    if LADDERS.keys.include?(player1_square)
      player1_square = LADDERS[player1_square]
    elsif SNAKES.keys.include?(player1_square)
      player1_square = SNAKES[player1_square]
    else
      player1_square
    end
      
    break
  end
  puts "Player 1 is on square #{player1_square}"
  sleep 2
  break if player1_square == WINNING_SQUARE

  #PLAYER 2 Turn
  loop do
    current_roll_sum = roll_dice
    player2_square += current_roll_sum
    if player2_square > WINNING_SQUARE
      back_track = player2_square - WINNING_SQUARE 
      player2_square -= (back_track * 2)
    end 

    if LADDERS.keys.include?(player2_square)
      player2_square = LADDERS[player2_square]
    elsif SNAKES.keys.include?(player2_square)
      player2_square = SNAKES[player2_square]
    else
      player2_square
    end
    break
  end
  puts "Player 2 is on square #{player2_square}"
  sleep 2
  break if player2_square == WINNING_SQUARE
end

if player1_square == WINNING_SQUARE
  puts 'Player 1 Wins!'
else
  puts 'Player 2 Wins!'
end
