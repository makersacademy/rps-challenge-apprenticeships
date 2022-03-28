def sign_in_and_play
  visit '/cpu'
  fill_in :player_name, with: 'Bob'
  click_button "Let's play"
end