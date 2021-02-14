def fill_in_name
  visit '/'
  fill_in :player_1_name, with: 'JoJo'
  click_button 'Submit'
end

def fill_in_name_and_choose_rock
  fill_in_name
  choose 'Rock'
  click_button 'Submit'
end

def fill_in_name_and_choose_paper
  fill_in_name
  choose 'Paper'
  click_button 'Submit'
end

def fill_in_name_and_choose_scissors
  fill_in_name
  choose 'Scissors'
  click_button 'Submit'
end

def start_a_two_player_game
  visit '/'
  click_button 'Two Player Game'
  fill_in :player_1_name, with: 'JoJo'
  fill_in :player_2_name, with: 'Dio'
  click_button 'Submit'
end
  
def play_a_two_player_round
  start_a_two_player_game
  choose 'Rock'
  click_button 'Submit'
  choose 'Scissors'
  click_button 'Submit'
end
