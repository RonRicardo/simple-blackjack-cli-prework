def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
  user_input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_sum = deal_card + deal_card
  display_card_total(card_sum)
  card_sum
end

def hit?(card_total)
  prompt_user
  val = get_user_input
  update_total = card_total
  case val
  when 'h'
    update_total += deal_card
  when 's'
    update_total
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
 welcome
 card_total = initial_round
   until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
   end
 end_game(card_total)
end
