require_relative "blackjack.rb"

def runner
  welcome
  initial_round
  hit?(current_card_total)
end