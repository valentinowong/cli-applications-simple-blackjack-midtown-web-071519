require_relative "blackjack.rb"

def runner
  welcome
  hit?(current_card_total) = initial_round
end