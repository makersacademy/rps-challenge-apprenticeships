def enter_name_and_play 
  visit ('/')
  fill_in 'player_name', with: 'Yossarian'
  click_button 'Start Game'
end

def pick_your_weapon
  visit ('/play')
  fill_in 'player_weapon', with: 'rock'
  click_button 'Submit Choice'
end
