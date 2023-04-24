WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
FIRST_MOVES = ['player', 'computer', 'choose']

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+------"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def welcome
  prompt "Welcome to Tic Tac Toe!"
  prompt "The first player to win 5 games is the champ!"
  prompt "Hit the 'Enter' key to start the game"
  gets.chomp
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def determine_first_player
  player = FIRST_MOVES.sample

  if player == 'player'
    'player'
  elsif player == 'computer'
    'computer'
  else
    loop do
      prompt "Choose who will make the first "\
      "move (1 for user, 2 for computer)"
      answer = gets.chomp.to_i
      if answer == 1
        return 'player'
      elsif answer == 2
        return 'computer'
      else
        prompt "Please enter a valid selection."
        sleep 1
      end
      break if answer == 1 || answer == 2
    end
  end
end

def alternate_player(player)
  if player == 'player'
    'computer'
  elsif player == 'computer'
    'player'
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_offensive_move(brd)
  square = nil

  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end
  square
end

def computer_defensive_move(brd)
  square = nil

  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, PLAYER_MARKER)
    break if square
  end
  square
end

def computer_center_square(brd)
  5 if brd[5] == INITIAL_MARKER
end

def computer_places_piece!(brd)
  square = computer_offensive_move(brd) || computer_defensive_move(brd) ||
           computer_center_square(brd) || empty_squares(brd).sample

  brd[square] = COMPUTER_MARKER
end

def place_piece!(brd, player)
  if player == 'player'
    player_places_piece!(brd)
  elsif player == 'computer'
    computer_places_piece!(brd)
  end
end

def find_at_risk_square(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def initialize_score
  { player: 0, computer: 0 }
end

def update_score(brd, scr)
  if detect_winner(brd) == 'Player'
    scr[:player] += 1
  elsif detect_winner(brd) == 'Computer'
    scr[:computer] += 1
  end
end

def display_score(scr)
  prompt "Player Score: #{scr[:player]} || Computer Score: #{scr[:computer]}"
end

def round_winner?(brd)
  if someone_won?(brd)
    prompt "#{detect_winner(brd)} won this round!"
  else
    prompt "It's a tie!"
  end
end

def go_to_next_round?(scr)
  if scr[:player] < 5 && scr[:computer] < 5
    prompt "Press 'Enter' to start the next round!"
    gets.chomp
  else
    false
  end
end

def display_champ(brd)
  prompt "#{detect_winner(brd)} is the Tic Tac Toe Champ!"
end

def play_again?
  prompt "Would you like to play again? (y or n)"
  gets.chomp.downcase.start_with?('y')
end

def we_have_a_champ(score)
  score[:player] >= 5 || score[:computer] >= 5
end

welcome
loop do
  score = initialize_score
  current_player = determine_first_player
  loop do
    board = initialize_board

    loop do # MAIN GAMEPLAY LOOP
      display_board(board)
      display_score(score)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end # END GAMEPLAY LOOP

    display_board(board)
    round_winner?(board)
    update_score(board, score)
    display_score(score)
    next if go_to_next_round?(score)
    display_champ(board)
    break if we_have_a_champ(score)
  end

  break unless play_again?
end

prompt "Thanks for playing Tic Tac Toe! Good Bye."
