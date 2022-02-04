def enter_name
  visit ('/')
  fill_in :player_name, with: 'Anna'
  click_button "Let's go!"
end