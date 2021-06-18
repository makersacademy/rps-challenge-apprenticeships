def load_single_player_game(name)
  srand(4)
  visit('/')
  click_button("1P")
  fill_in :p1_name, with: name
  # 2.times {  }
  click_button("Start")
end

def start_single_player_game(name)
  load_single_player_game(name)
  click_button("Start")
end
