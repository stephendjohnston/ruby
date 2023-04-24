VALID_CHOICES = %w(rock paper scissors lizard spock)
CHOICES = {'r' => 'rock', 'p' => 'paper', 's' => 'scissors',
           'l' => 'lizard', 'k' => 'spock' }

def prompt(message)
  puts("=> #{message}")
end

def display_results(player, computer)
  if win?(player, computer)
    "You won!"
  elsif win?(computer, player)
    "Computer won!"
  else
    "It's a tie!"
  end
end

def win?(first, second)
    (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'lizard' && (second == 'spock' || second == 'paper')) ||
    (first == 'spock' && (second == 'rock' || second == 'scissors'))
end

prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock!")
prompt("Please enter your name:")
name = gets.chomp
system 'clear' 

prompt("First player to win 5 games, wins it all. Good luck #{name}!")

loop do
  player_score = 0
  computer_score = 0
  round = 1
  loop do
    choice = ''
    loop do
      puts (">> ROUND: #{round} <<").center(40)
      puts ""
      

      prompt("PLAYER SCORE:#{player_score} || "\
       "COMPUTER SCORE:#{computer_score}")
      
      prompt("Choose one: #{CHOICES}")
      choice = gets.chomp
      choice = CHOICES[choice]

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose: #{choice.upcase} || "\
    "Computer chose: #{computer_choice.upcase}")
    puts ""
    

    results = display_results(choice, computer_choice)

    if results == "You won!"
      player_score += 1
    elsif results == "Computer won!"
      computer_score += 1
    end

    prompt("#{results}")
    
    round += 1

    puts ""
    prompt("Hit 'enter' to start the next round.")
    gets

    system('clear') || system('cls')      # clears screen so each round is on a clean screen

    break if player_score == 5 || computer_score == 5

  end

  prompt("=>=> PLAYER SCORE:#{player_score} || "\
  "COMPUTER SCORE:#{computer_score} <=<= <=")
  
  if player_score == 5
    prompt("Congratulations, you beat the computer!")
  else
    prompt("The computer won this time. Don't let the machines win and play again!")
  end

  prompt("Would you like to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for playing. Good bye, #{name}!")
