class GuessingGame
  GUESS_LIMIT = 7
  
  def initialize
    @winning_number = (1..100).to_a.sample
    @number_of_guesses = 0
    @guess = nil
  end

  def play
    loop do
      display_remaining_guesses
      user_guess
      high_or_low
      guess_counter
      break if guess_limit_reached || winner?
    end
    you_lost! if !winner?
  end

  def display_remaining_guesses
    puts "You have #{remaining_guesses} guesses remaining."
  end

  def user_guess
    number = nil
    loop do 
      puts "Enter a number between 1 and 100:"
      number = gets.chomp.to_i
      break if (1..100).to_a.include?(number)
      puts "Invalid guess."
    end
    self.guess = number
  end

  def high_or_low
    if @guess > winning_number
      puts "Your guess is to high."
    elsif @guess < winning_number
      puts "Your guess is to low."
    else
      you_won!
    end
  end

  def remaining_guesses
    GUESS_LIMIT - @number_of_guesses
  end

  def guess_counter
    @number_of_guesses += 1
  end

  def winner?
    @winning_number == guess
  end

  def you_won!
    puts "That's the number!"
    puts ""
    puts "You won!"
  end

  def you_lost!
    puts "You have no more guesses. You lost!"
  end

  def guess_limit_reached
    @number_of_guesses == GUESS_LIMIT
  end

  private

  attr_reader :winning_number, :guess_limit
  attr_accessor :guess
end

game = GuessingGame.new
game.play
