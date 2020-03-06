require './app'

feature 'form' do 
	scenario 'can enter name and submit' do 
		visit '/form'
		page.should have_selector("input[type=submit][value='Start game']")
		page.should have_selector("input[type=text][name='name']")
	end
	scenario 'can redirect to game after submit' do
		visit '/form'
		fill_in 'name', with: 'Rita rita'
		click_button 'Start game'
		expect(page).to have_current_path('/play')
	end
end
