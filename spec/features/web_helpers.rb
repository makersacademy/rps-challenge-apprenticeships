def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Computer'
  click_button "Let's play!"
end
