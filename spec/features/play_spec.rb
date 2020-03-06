require './app'

feature 'game interface' do 
	scenario 'shows player1 name' do
		sign_in_and_play
		page.should have_content 'Rita Rita'
	end
	scenario 'player can choose rock, paper or scissors' do
		sign_in_and_play
		page.should have_select('player_move', options:['rock', 'paper', 'scissors'])
	end
	scenario 'player can submit their move' do
		sign_in_and_play
		page.should have_button 'submit'
	end
	scenario 'hides the form after submit' do
		sign_in_and_play
		select 'scissors', from: 'player_move'
		click_button 'submit'
		page.should have_no_select('player_move')
	end
	scenario 'player can view their own move' do
		sign_in_and_play
		select 'scissors', from: 'player_move'
		click_button 'submit'
		page.should have_content "Your move: "
	end
	scenario 'shows the opponent is the computer' do
		sign_in_and_play
		page.should have_content "You are playing with: Computer"
	end
	scenario 'player can see computer move' do 
		sign_in_and_play
		select 'scissors', from: 'player_move'
		click_button 'submit'
		expect(page).to have_content "Computer's move: "
	end
	scenario 'player can see the game result' do 
		sign_in_and_play
		select 'scissors', from: 'player_move'
		click_button 'submit'
		page.should have_content 'The winner is: '
	end
	scenario 'player gets a friendly warning after the game' do
		sign_in_and_play
		select 'scissors', from: 'player_move'
		click_button 'submit'
		page.should have_content 'Now get on with your life'
	end
end