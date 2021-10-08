def sign_in_and_play
  visit "/"
  fill_in :player, with: "Sasha"
  click_button "play"
end
