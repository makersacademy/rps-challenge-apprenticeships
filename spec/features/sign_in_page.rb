def start
  visit('/')
  fill_in :players_name, with: 'Kev'
  click_button 'Submit'
end