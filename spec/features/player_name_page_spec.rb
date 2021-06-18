describe RockPaperScissors do
  feature 'pre game' do
    scenario 'entering player name' do
      visit('/')
      fill_in :player_name, with: 'Kelvin'
      click_button 'Submit'
      expect(page).to have_content('Player name is Kelvin')
    end
  end
end
