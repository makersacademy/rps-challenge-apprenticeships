def sign_in_and_play
  visit ('/')
  fill_in :player_1, with: 'Olivia'
  click_button "Play!"
end