feature 'rock paper scissors buttons' do
	scenario 'rock button exists' do
		visit '/play'
		expect(page).to have_button('Rock')
	end

	scenario 'paper button exists' do
		visit '/play'
		expect(page).to have_button('Paper')
	end

	scenario 'scissors button exists' do
		visit '/play'
		expect(page).to have_button('Scissors')
	end

	scenario 'click on scissors button' do
		visit '/play'
		page.click_on 'Scissors'
		expect(page).to have_content "Miranda played scissors"
	end
end