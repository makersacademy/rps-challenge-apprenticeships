
def sign_in
  visit '/'
  fill_in :player_name, with: 'test_player_one'
  click_button 'Ready!'
end
