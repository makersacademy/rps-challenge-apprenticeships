require './app' 

feature 'register name' do 
	scenario 'submit name' do 
		register_and_play
		expect(page).to have_content "Hello Jimmy it is you vs. Computer"

	end
end