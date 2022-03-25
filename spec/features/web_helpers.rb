def sign_in_and_play
  visit('/')
  fill_in 'player_one', with: 'Billy'
  click_button 'Submit'
end
