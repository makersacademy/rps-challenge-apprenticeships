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
	
	scenario 'click on paper button' do
		visit '/'
    page.fill_in 'Enter your name', with: 'Miranda'
    page.click_on 'Submit'
		page.click_on 'Paper'
		expect(page).to have_content "Miranda played paper"
	end

	scenario 'click on rock button' do
		visit '/'
    page.fill_in 'Enter your name', with: 'Miranda'
    page.click_on 'Submit'
		page.click_on 'Rock'
		expect(page).to have_content "Miranda played rock"
	end

	scenario 'click on scissors button' do
		visit '/'
    page.fill_in 'Enter your name', with: 'Miranda'
    page.click_on 'Submit'
		page.click_on 'Scissors'
		expect(page).to have_content "Miranda played scissors"
	end
end