def sign_in_and_play 
	visit '/form'
	fill_in 'name', with: 'Rita Rita'
	click_button 'Start game'
end