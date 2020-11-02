def sign_in_and_play
  visit '/home'
  fill_in :player_one_name, with: 'Jack'
  fill_in :player_two_name, with: 'Josh'
  click_button 'submit'
end

def make_move
  choose 'scissors'
  choose 'paper2'
  click_button 'Make move'
end

def make_move2
  choose 'rock'
  choose 'spock2'
  click_button 'Make move'
end
