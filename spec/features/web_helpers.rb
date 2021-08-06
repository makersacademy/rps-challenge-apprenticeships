def load_single_player_game(name)
  srand(4)
  visit('/')
  select("1", from: "Mode")
  click_button("Select")
  fill_in :p1_name, with: name
  click_button("Start")
end

def start_single_player_game(name)
  load_single_player_game(name)
  click_button("Start")
end

def load_multiplayer_game(name_1, name_2)
  visit('/')
  select("2", from: "Mode")
  click_button("Select")
  fill_in :p1_name, with: name_1
  fill_in :p2_name, with: name_2
  click_button("Start")
end

def start_multiplayer_game(name_1, name_2)
  load_multiplayer_game(name_1, name_2)
  click_button("Start")
end
