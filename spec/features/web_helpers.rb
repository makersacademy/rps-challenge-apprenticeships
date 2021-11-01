def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Raul'
  click_button 'Submit'
  save_and_open_page
end

def choose_and_play
  visit('/play')
  fill_in :player_choice, with: 'Scissors'
  click_button 'Submit'
  save_and_open_page
end