def sign_in_to_play
  visit('/')
    fill_in :player_name, with: 'Emma'
    click_button 'Submit'
end