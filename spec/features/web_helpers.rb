def register_and_play
	visit '/'
	fill_in :player, with: 'Jimmy'
	click_button "Let's Play!"
end