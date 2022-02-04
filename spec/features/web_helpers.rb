def enter_name_and_play 
  visit ('/')
  fill_in 'player_name', with: 'Yossarian'
  click_button 'Start Game'
end
