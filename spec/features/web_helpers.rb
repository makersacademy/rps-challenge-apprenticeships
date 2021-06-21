def enter_name
  visit('/')
  fill_in :player_name, with: 'Kelvin'
  click_button 'Submit'
end
