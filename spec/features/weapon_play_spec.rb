require './app' 

feature 'Player can choose their weapon' do 
	scenario ' Weapon against Opponent - Rock' do 
		register_and_play
		click_button "Rock"
		expect(page).to have_content 'Your weapon: Rock!'
	end
end