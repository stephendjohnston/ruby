class Move
  VALUES = {  'r' => 'Rock',
              'p' => 'Paper',
              's' => 'Scissors',
              'l' => 'Lizard',
              'sp' => 'Spock'
              }

  def initialize(value)
    @value = value
  end

  def scissors?
    @value == 'Scissors'
  end

  def rock?
    @value == 'Rock'
  end

  def paper?
    @value == 'Paper'
  end

  def lizard?
    @value == 'Lizard'
  end

  def spock?
    @value == 'Spock'
  end

  def >(other_move)
    (rock? && (other_move.scissors? || other_move.lizard?)) ||
      (paper? && (other_move.rock? || other_move.spock?)) ||
      (scissors? && (other_move.paper? || other_move.lizard?)) ||
      (lizard? && (other_move.paper? || other_move.spock?)) ||
      (spock? && (other_move.rock? || other_move.scissors?))
  end

  def to_s
    @value
  end
end

class Player
  attr_accessor :move, :name, :score, :move_history

  def initialize
    set_name
    @score = 0
    @move_history = []
  end

  def reset_score
    @score = 0
  end

  def reset_move_history
    @move_history = []
  end

  def to_s
    @move_history
  end
end

class Human < Player
  def choose
    choice = nil
    loop do
      puts "Please choose (r)ock, (p)aper, (s)cissors, (l)izard or (sp)ock:"
      puts ""
      choice = gets.chomp
      break if Move::VALUES.keys.include?(choice)
      puts "Sorry, invalid choice."
    end
    self.move = Move.new(Move::VALUES[choice])
    move_history << Move::VALUES[choice]
  end

  private

  def set_name
    n = ""
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value."
    end
    self.name = n
  end
end

class Computer < Player
  attr_reader :character

  def initialize
    @character = [Groot, Hulk, Andromeda, Hook, Godzilla].sample.new
    super
  end

  def set_name
    self.name = character.name
  end

  def choose
    self.move = character.choose
    move_history << move.to_s
  end
end

class Groot < Computer
  def initialize; end

  def choose
    self.move = Move.new(Move::VALUES[%w(p l).sample])
  end

  def name
    self.class.to_s
  end
end

class Hulk < Computer
  def initialize; end

  def choose
    self.move = Move.new(Move::VALUES['r'])
  end

  def name
    self.class.to_s
  end
end

class Andromeda < Computer
  def initialize; end

  def choose
    self.move = Move.new(Move::VALUES.values.sample)
  end

  def name
    self.class.to_s
  end
end

class Hook < Computer
  def initialize; end

  def choose
    self.move = Move.new(Move::VALUES[%w(s s s s l).sample])
  end

  def name
    self.class.to_s
  end
end

class Godzilla < Computer
  def initialize; end

  def choose
    self.move = Move.new(Move::VALUES[%w(l l l l l l l sp sp sp).sample])
  end

  def name
    self.class.to_s
  end
end

class RPSGame
  WINNING_SCORE = 3
  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def play
    clear_screen
    display_welcome_message

    loop do
      start_match
      break unless play_again?
      reset_game
    end
    display_goodbye_message
  end

  private

  def display_welcome_message
    puts "Welcome #{human.name}. Let's play Rock, Paper, Scissors!"
    puts "First player to win #{WINNING_SCORE} rounds is the Champion!"
    puts ""
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors. Good bye!"
  end

  def display_moves
    puts "<<<  Moves  >>>"
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."
    puts ""
  end

  def display_round_winner
    if human.move > computer.move
      puts "#{human.name} won!"
      puts ""
    elsif computer.move > human.move
      puts "#{computer.name} won!"
      puts ""
    else
      puts "It's a tie!"
      puts ""
    end
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include? answer.downcase
      puts "Sorry, must be y or n."
    end

    return false if answer.downcase == 'n'
    return true if answer.downcase == 'y'
  end

  def someone_won?
    if human.score == WINNING_SCORE ||
       computer.score == WINNING_SCORE
      clear_screen
      true
    end
  end

  def display_champion
    if human.score == WINNING_SCORE
      puts "#{human.name} is the Champion!"
      puts ""
    else
      puts "Sorry, you lost...better luck next time!"
      puts ""
    end
  end

  def update_score
    human.score += 1 if human.move > computer.move
    computer.score += 1 if computer.move > human.move
  end

  def display_score
    puts ""
    puts ">>>  Score  <<<"
    puts "#{human.name}: #{human.score}"
    puts "#{computer.name}: #{computer.score}"
    puts ""
  end

  def reset_game
    clear_screen
    human.reset_score
    computer.reset_score
    human.reset_move_history
    computer.reset_move_history
  end

  def display_move_history?
    puts "Enter 'y' to see each players move history."
    answer = gets.chomp
    if answer == 'y'
      puts "#{human.name}'s Move History: #{human.move_history}"
      puts "#{computer.name}'s Move History: #{computer.move_history}"
      puts ""
    end
    start_next_round
  end

  def clear_screen
    system 'clear'
  end

  def start_next_round
    puts "Hit the 'enter' key to continue!"
    gets.chomp
    clear_screen
  end

  def start_match
    loop do
      display_score
      human.choose
      computer.choose
      display_moves
      display_round_winner
      update_score

      if someone_won?
        display_score
        display_champion
        display_move_history?
        break
      end
      start_next_round
      clear_screen
    end
  end
end

RPSGame.new.play
