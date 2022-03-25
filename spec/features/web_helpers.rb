def sign_in_and_play
  visit('/')
  fill_in 'player_one', with: 'Homer'
  fill_in 'player_one', with: 'Marge'
  click_button 'Submit'
end

def randomise
  srand(1)
  srand(3)
end
