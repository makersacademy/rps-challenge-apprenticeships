def sign_in_and_play
  visit('/')
  fill_in :player, with: 'Kalindi'
  click_button 'Submit'
end
