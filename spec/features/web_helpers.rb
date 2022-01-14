
def sign_in
  visit '/'
  fill_in :player_one_name, with: 'test_player_one'
  fill_in :player_two_name, with: 'test_player_two'
  click_button 'Ready!'
end

def p1_wins
  visit '/'
  fill_in :player_one_name, with: 'test_player_one'
  fill_in :player_two_name, with: 'test_player_two'
  click_button 'Ready!'
  click_button 'Rock'
  click_button 'Scissors'
end

def start_spock_game
  vist '/'
  fill_in :player_one_name, with: "test_player_one"
  fill_in :player_two_name, with: "test_player_two"
  check("spock_game")
  click_button "Ready!"
end
