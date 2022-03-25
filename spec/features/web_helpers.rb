def enter_name_and_play
  visit('/')
  fill_in :player_name, with: 'Luci'
  click_button 'PLAY!'
end
