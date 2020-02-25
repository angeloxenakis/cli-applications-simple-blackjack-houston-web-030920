require 'pry'
sum = 0

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(sum)
  prompt_user
  input = get_user_input
  if input == 'h'
    sum += deal_card
  elsif input == 's'
  else
    invalid_command
    hit?(sum)
  end
  sum
end


def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  sum = initial_round
  until sum > 21 do
    hit?
    display_card_total
  end
  end_game 
end
    
