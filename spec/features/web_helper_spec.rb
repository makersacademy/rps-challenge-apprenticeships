def register_and_play
  visit ('/')
  fill_in :PlayerName, with: 'Justine'
  click_button "Start Game!"
end