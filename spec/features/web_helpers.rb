def sign_in_and_play
  visit ('/')
  fill_in :player_name, with: 'Anna'
  click_button "Let's go!"
end
