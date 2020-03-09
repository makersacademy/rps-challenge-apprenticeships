require './app' 

feature 'Player can choose their weapon' do 
	scenario ' weapon against Opponent - Rock' do 
		register_and_play
		click_button "Rock"
		expect(page).to have_content 'Your weapon: Rock!'
	end

	scenario 'computer chooses a weapon' do 
		register_and_play
		click_button 'Paper'
		message = find(:css, "#computer").text
		expect(auto_weapon).to include message
	end

	def auto_weapon
		[:rock, :paper, :scissors].map { |weapon| "Computer weapon: #{weapon.to_s.capitalize}!"  }
	end
end