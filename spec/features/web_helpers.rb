def sign_in_and_play
  visit ('/')
  fill_in :player1, with: 'Muffin'
  click_button 'Submit'
end

def begin_game
  click_button "Start Game"
  click_button 'Rock'
end
