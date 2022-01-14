
def sign_in
  visit '/'
  fill_in :player_one_name, with: 'test_player_one'
  fill_in :player_two_name, with: 'test_player_two'
  click_button 'Ready!'
end
