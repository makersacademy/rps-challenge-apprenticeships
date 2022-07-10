def fill_name_and_play
  visit('/')
  fill_in :player_name, with: 'Marlon'
  click_button 'Submit'
end

