def sign_in_and_play
  # Visit our page
  visit('/')

  # Fill in the form
  click_button 'Reset'
  fill_in :player_1_name, with: 'David'
  click_button 'Player One Enter'
  click_button 'Add Another'
  fill_in :player_2_name, with: 'Goliath'
  click_button 'Player Two Enter'

end
