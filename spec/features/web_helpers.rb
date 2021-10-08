def register_name_and_play
  visit("/")
  fill_in("player_name", with: "Cleo")
  click_button("Play")
end
