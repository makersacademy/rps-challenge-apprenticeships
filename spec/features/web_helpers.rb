def sign_in_and_play
  visit('/')
  fill_in 'player_one', with: 'Homer'
  click_button 'Submit'
end
