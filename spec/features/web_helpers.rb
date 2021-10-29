def sign_in_and_play
  visit ('/')
  fill_in :player1, with: 'Muffin'
  click_button 'Submit'
end