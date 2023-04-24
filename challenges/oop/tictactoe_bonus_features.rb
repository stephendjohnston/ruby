class Board
  attr_reader :squares

  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                  [[1, 5, 9], [3, 5, 7]]              # diagonals

  def initialize
    @squares = {}
    reset
  end

  def []=(num, marker)
    @squares[num].marker = marker
  end

  def unmarked_keys
    @squares.keys.select { |key| @squares[key].unmarked? }
  end

  def full?
    unmarked_keys.empty?
  end

  def someone_won?
    !!winning_marker
  end

  def winning_marker
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      if three_identical_markers?(squares)
        return squares.first.marker
      end
    end
    nil
  end

  def reset
    (1..9).each { |key| @squares[key] = Square.new }
  end

  def draw
    puts "     |     |"
    puts "  #{@squares[1]}  |  #{@squares[2]}  |  #{@squares[3]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[4]}  |  #{@squares[5]}  |  #{@squares[6]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[7]}  |  #{@squares[8]}  |  #{@squares[9]}"
    puts "     |     |"
  end

  private

  def three_identical_markers?(squares)
    markers = squares.select(&:marked?).collect(&:marker)
    return false if markers.size != 3
    markers.min == markers.max
  end
end

class Square
  INITIAL_MARKER = " "

  attr_accessor :marker

  def initialize(marker=INITIAL_MARKER)
    @marker = marker
  end

  def to_s
    @marker
  end

  def unmarked?
    marker == INITIAL_MARKER
  end

  def marked?
    marker != INITIAL_MARKER
  end
end

class Player
  ALPHABET = ('A'..'Z').to_a
  COMPUTER_NAME = ['Benjamin Button', 'Dumbo', 'Pinochhio'].sample
  attr_accessor :score, :name, :marker

  def initialize(user=nil)
    @score = 0
    return unless user == 'computer'
    @marker = ALPHABET.sample
    @name = COMPUTER_NAME
  end

  def increment_score
    self.score += 1
  end

  def reset_score
    self.score = 0
  end

  def set_name
    n = ''
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, you must enter a value."
    end
    self.name = n
  end

  def choose_marker
    choice = ''
    loop do
      puts "Please choose a character from the alphabet:"
      choice = gets.chomp.upcase
      break if ALPHABET.include?(choice)
      puts "Invalid choice, choose again."
    end
    self.marker = choice
  end
end

class TTTGame
  SCORE_LIMIT = 3
  attr_reader :board, :human, :computer

  def initialize
    @board = Board.new
    @human = Player.new
    @computer = Player.new('computer')
  end

  def play
    start_game
    loop do
      loop do
        display_board
        game_loop
        display_result
        update_score
        break if score_limit_reached?
        clear
        reset
      end
      display_champion
      break unless play_again?
      reset
      display_play_again_message
      reset_user_scores
    end

    display_goodbye_message
  end

  private

  def start_game
    clear
    display_welcome_message
    human.set_name
    human.choose_marker
    set_first_player
  end

  def game_loop
    loop do
      current_player_moves
      break if board.someone_won? || board.full?
      clear_screen_and_display_board if human_turn?
    end
  end

  def set_first_player
    choice = ''
    loop do
      puts "Who will make the first move? " \
      "('p' for player or 'c' for computer)"
      choice = gets.chomp.downcase
      break if %w(p c).include?(choice)
      puts "Invalid choice, try again."
    end
    @current_marker = choice == 'p' ? human.marker : computer.marker
  end

  def human_turn?
    @current_marker == human.marker
  end

  def current_player_moves
    if human_turn?
      human_moves
      @current_marker = computer.marker
    else
      computer_moves
      @current_marker = human.marker
    end
  end

  def human_moves
    puts "Choose a square (#{joinor(board.unmarked_keys)}): "
    square = nil
    loop do
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      puts "Sorry, that's not a valid choice."
    end

    board[square] = human.marker
  end

  def computer_moves
    square = computer_offense ||
             computer_defense ||
             board.unmarked_keys.find { |key| key == 5 } ||
             board.unmarked_keys.sample

    board[square] = computer.marker
  end

  def computer_offense
    Board::WINNING_LINES.each do |line|
      marks = board.squares.values_at(*line).map(&:marker)
      if at_risk_square(marks, computer.marker)
        i = marks.index(Square::INITIAL_MARKER)
        return line[i]
      end
    end
    nil
  end

  def computer_defense
    Board::WINNING_LINES.each do |line|
      marks = board.squares.values_at(*line).map(&:marker)
      if at_risk_square(marks, human.marker)
        i = marks.index(Square::INITIAL_MARKER)
        return line[i]
      end
    end
    nil
  end

  def at_risk_square(line, marker)
    line.count(marker) == 2 && line.count(Square::INITIAL_MARKER) == 1
  end

  def score_limit_reached?
    human.score == SCORE_LIMIT ||
      computer.score == SCORE_LIMIT
  end

  def update_score
    case board.winning_marker
    when human.marker
      human.increment_score
    when computer.marker
      computer.increment_score
    end
    sleep(1.5)
  end

  def reset_user_scores
    human.reset_score
    computer.reset_score
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp.downcase
      break if %w(y n).include? answer
      puts "Sorry, must be y or n"
    end

    answer == 'y'
  end

  def reset
    board.reset
    @current_marker = set_first_player
    clear
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

  def display_welcome_message
    puts "Welcome to Tic Tac Toe!"
    puts "First player to win 3 matches will be crowned " \
    "the Tic Tac Toe Champion!"
    puts ""
  end

  def display_board
    display_score
    puts ""
    puts "#{human.name} is #{human.marker}. " \
      "#{computer.name} is #{computer.marker}."
    puts ""
    board.draw
    puts ""
  end

  def display_result
    clear_screen_and_display_board

    case board.winning_marker
    when human.marker
      puts "You won!"
    when computer.marker
      puts "Computer won!"
    else
      puts "It's a tie!"
    end
  end

  def display_score
    puts "[SCORE]".center(23)
    puts "Human: #{human.score}  ||  Computer: #{computer.score}"
    puts ""
  end

  def display_champion
    if human.score == SCORE_LIMIT
      puts "Congrats! You are the Tic Tac Toe champ!"
    else
      puts "Sorry, you lost. The computer is the Tic Tac Toe champ!"
    end
  end

  def display_play_again_message
    puts "Let's play again!"
    puts ""
  end

  def clear
    system "clear"
  end

  def clear_screen_and_display_board
    clear
    display_board
  end

  def display_goodbye_message
    puts "Thanks for playing Tic Tac Toe! Goodbye!"
  end
end

game = TTTGame.new
game.play
