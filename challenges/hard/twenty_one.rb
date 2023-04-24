def welcome
  prompt 'Welcome to the Twenty-One Game. The first player to
  win 5 games will be crowned the champion! Hit enter to get started!'
  gets.chomp
end

def initialize_deck_of_cards
  values = ["Ace", '2', '3', '4', '5', '6', '7', '8', '9', '10', "Jack", "Queen", "King"]
  suits = ['hearts', 'spades', 'clubs', 'diamonds']
  values.product(suits)
end

def prompt(message)
  puts "=> #{message}"
end

def shuffle_cards!(deck)
  deck.shuffle!
end

def deal_cards!(deck)
  cards = []
  2.times do
    cards << deck.shift
  end
  cards
end

def ace_value?(aces, sum)
  loop do
    if aces > 0 && sum > 21
      sum  -= 10
      aces -= 1
    end

    break if sum <= 21
    return sum if sum > 21 && aces == 0
  end
  sum
end

def total_card_value?(cards)
  values = cards.flatten.select.with_index { |value, index| value if index.even? }

  total = 0
  values.each do |value|
    if value == 'Ace'
      total += 11
    elsif value.to_i == 0
      total += 10
    else
      total += value.to_i
    end
  end

  number_of_aces = values.count('Ace')
  ace_value?(number_of_aces, total)
end

def joinor(arr, delimiter=', ', word='and')
  arr = arr.flatten.select.with_index { |values, index| values if index.even? }
  if arr.size == 2
    arr.first + ' ' + word + ' ' + arr.last
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def display_player_cards(player_cards)
  prompt "You have: #{joinor(player_cards)} for a total of "\
  "#{total_card_value?(player_cards)}"
end

def display_dealer_cards(dealer_cards)
  prompt "Dealer has: #{dealer_cards.first.first} and unknown card"
end

def reveal_dealer_hand(dealer_cards)
  prompt "Dealer has: #{joinor(dealer_cards)} for a total of "\
  "#{total_card_value?(dealer_cards)}"
end

def hit(deck)
  deck.shift
end

def dealers_turn
  prompt 'You chose to stay. The dealer will now hit or stay..'
end

def busted?(players_cards)
  total_card_value?(players_cards) > 21
end

def play_again?
  prompt 'Would you like to play again? (y or n)'
  gets.chomp.downcase.start_with?('y')
end

def initialize_score
  { player: 0, dealer: 0 }
end

def update_score(player_cards, dealer_cards, scr)
  player_total = total_card_value?(player_cards)
  dealer_total = total_card_value?(dealer_cards)

  if busted?(dealer_cards) || (player_total <= 21 && player_total > dealer_total)
    scr[:player] += 1
  elsif busted?(player_cards) || player_total < dealer_total
    scr[:dealer] += 1
  end
end

def display_score(scr)
  prompt "Player Score: #{scr[:player]} || Dealer Score: #{scr[:dealer]}"
end

def detect_winner?(player_cards, dealer_cards)
  player_total = total_card_value?(player_cards)
  dealer_total = total_card_value?(dealer_cards)

  if player_total > dealer_total
    return 'Player'
  elsif player_total < dealer_total
    return 'Dealer'
  end
  nil
end

def round_winner?(player_cards, dealer_cards)
  if someone_won?(player_cards, dealer_cards)
    prompt "#{detect_winner?(player_cards, dealer_cards)} won this round!"
  else
    prompt "It's a tie!"
  end
end

def someone_won?(player_cards, dealer_cards)
  !!detect_winner?(player_cards, dealer_cards)
end

def go_to_next_round?
  prompt "Press 'Enter' to start the next round!"
  gets.chomp
end

def five_games_won?(scr)
  scr[:player] >= 5 || scr[:dealer] >= 5
end

def declare_champ(scr)
  prompt 'Congrats! You are the champ!' if scr[:player] == 5
  prompt 'Sorry, you lost. Better luck next time!' if scr[:dealer] == 5
end

welcome
loop do
  deck = initialize_deck_of_cards
  score = initialize_score
  shuffle_cards!(deck)
  loop do
    players_cards = deal_cards!(deck)
    total_card_value?(players_cards)
    dealers_cards = deal_cards!(deck)
    total_card_value?(dealers_cards)
    loop do
      deck = initialize_deck_of_cards if deck.size < 10

      loop do
        system 'clear'
        display_score(score)
        display_dealer_cards(dealers_cards)
        display_player_cards(players_cards)
        sleep 2
        prompt "Would you like to 'Hit' or 'Stay'? Enter (h or s)"
        answer = gets.chomp
        players_cards << hit(deck) if answer == 'h'
        system 'clear'
        display_player_cards(players_cards)
        break if answer == 's' || busted?(players_cards)
      end

      break if busted?(players_cards)

      dealers_turn
      sleep 3
      loop do
        break if total_card_value?(dealers_cards) >= 17
        system 'clear'
        display_score(score)
        reveal_dealer_hand(dealers_cards)
        sleep 2
        prompt "The dealer must hit.."
        sleep 2
        dealers_cards << hit(deck)
        system 'clear'
        prompt "Card dealt: #{dealers_cards.last.first}"
        sleep 1
      end

      reveal_dealer_hand(dealers_cards)
      break if busted?(dealers_cards)
      round_winner?(players_cards, dealers_cards)
      break
    end

    prompt "Oh no! You busted!" if busted?(players_cards)
    prompt "The dealer busted..You win!" if busted?(dealers_cards)
    sleep 1

    update_score(players_cards, dealers_cards, score)
    display_score(score)
    break if five_games_won?(score)
    go_to_next_round?
  end

  declare_champ(score)
  sleep 1
  break unless play_again?
end

prompt "Thank you for playing Twenty-One!"
