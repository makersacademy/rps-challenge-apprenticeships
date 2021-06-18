def load_single_player_game(name)
  visit('/')
  click_button("1P")
  fill_in :name, with: name
  # 2.times {  }
  click_button("Start")
end

def start_single_player_game(name)
  load_single_player_game(name)
  click_button("Start")
end
