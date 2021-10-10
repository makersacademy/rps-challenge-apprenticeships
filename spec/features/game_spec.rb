feature 'playing the game' do
  scenario 'select option' do
  	expect(page).to have_content 'Rock'
		expect(page).to have_content 'Paper'
		expect(page).to have_content 'Scissors'