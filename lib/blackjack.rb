def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand (1..11)
end

def display_card_total(card_total)
   puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card
  card_total += deal_card
  display_card_total(card_total)
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(current_card_total)
  prompt_user
  player_input = get_user_input
  if player_input == 'h'
    current_card_total += deal_card
  elsif player_input == 's'
     current_card_total
  else 
    invalid_command
    prompt_user
    player_input = get_user_input
  end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hit?(initial_round)
end
    
