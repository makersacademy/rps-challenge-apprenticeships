def sign_in_and_play
  # Visit our page
  visit('/')

  # Fill in the form
  fill_in :player_1_name, with: 'David'
  fill_in :player_2_name, with: 'Goliath'

  # Submit the form
  click_button 'Submit'
end
