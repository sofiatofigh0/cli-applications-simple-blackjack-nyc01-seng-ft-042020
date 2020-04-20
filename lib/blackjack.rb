require "pry"

def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  rand(1..11)
  # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input=gets.chomp
  user_input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  deal_card
  deal_card
  sum = deal_card + deal_card
  sum
  display_card_total(sum)
  return sum
end


def hit?(current_total)
  prompt_user
  other_input=get_user_input
  
   if other_input == 's'
   elsif other_input == 'h'
     current_total = deal_card + current_total
   else
     invalid_command
     prompt_user
     other_input=get_user_input
 end
   return current_total
 end
 

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################
  
def runner
  # code runner here
  welcome
  hand=initial_round
  until hand>21 do
    hand=hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
end
    
