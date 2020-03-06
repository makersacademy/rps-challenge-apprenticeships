require './app'

feature 'form' do 
	scenario 'can enter name and submit' do 
		visit '/form'
		page.should have_selector("input[type=submit][value='Start game']")
		page.should have_selector("input[type=text][name='name']")
	end
	scenario 'can redirect to game after submit' do
		sign_in_and_play
		expect(page).to have_current_path('/play')
	end
end
