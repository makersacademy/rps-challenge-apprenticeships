def sign_in_and_play_vs_ai
  visit('/')
  click_button 'Play vs AI'
  fill_in 'player_one', with: 'Homer'
  click_button 'Submit'
end

def randomise
  srand(1)
  srand(3)
end
