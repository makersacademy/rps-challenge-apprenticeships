def start_playing
  visit ('/')
  fill_in :player_name, with: 'Aladin'
  click_button 'Submit'
end
