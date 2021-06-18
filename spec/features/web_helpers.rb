def start_single_player_game(name)
  visit('/')
  click_button("1P")
  fill_in :name, with: name
  click_button("Start")
end
