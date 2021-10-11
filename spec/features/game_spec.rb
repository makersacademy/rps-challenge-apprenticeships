feature 'playing the game' do
	before do
		visit('/')
      fill_in :player_name, with: 'Makers'
      click_button 'Submit'
	end 

  scenario 'select option' do
  	expect(page).to have_button 'Rock'
		expect(page).to have_button 'Paper'
		expect(page).to have_button 'Scissors'
	end 

	scenario 'computer chooses Rock' do 
		click_button 'Rock'
		expect(random_choice).to include choice 
	end 

	def random_choice
		[:Rock, :Paper, Scissors].map { |option| "Computer chose #{option}"}
end 