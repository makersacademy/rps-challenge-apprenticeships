def start_playing
  visit ('/')
  fill_in :player_1, with: 'Aladin'
  click_button 'Submit'
end
