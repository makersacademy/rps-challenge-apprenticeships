def enter_name(player_name)
  visit('/')
  fill_in :player_name, with: player_name
  click_button 'Submit'
end