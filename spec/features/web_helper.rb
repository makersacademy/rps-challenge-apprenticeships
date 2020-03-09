def register
	visit('/')
	fill_in :player_name, with: 'Pikachu'
	click_button "Let's play!"
end

def register_and_pick_rock
	visit('/')
	fill_in :player_name, with: 'Pikachu'
	click_button "Let's play!"
	click_button "Rock"
end

def register_and_pick_scissors
	visit('/')
	fill_in :player_name, with: 'Pikachu'
	click_button "Let's play!"
	click_button "Scissors"
end