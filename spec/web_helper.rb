def sign_in_and_play 
	visit '/form'
	fill_in 'name', with: 'Rita Rita'
	click_button 'Start game'
end

def select_scissors
	visit '/form'
	fill_in 'name', with: 'Rita Rita'
	click_button 'Start game'
	select 'scissors', from: 'player_move'
	click_button 'submit'
end