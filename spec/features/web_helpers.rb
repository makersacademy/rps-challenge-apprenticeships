def sign_in_and_start_multiplayer 
  visit('/')
  fill_in('Player 1', with: 'Freddy')
  fill_in('Player 2', with: 'Jason')
  click_button('Start')
end