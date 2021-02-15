feature 'weapon choices' do
    before do
      visit('/')
      fill_in :player_1, with: 'Anastasia'
      click_button 'Start game'
    end
    scenario 'see the weapon choices' do
      expect(page).to have_button 'Rock'
      expect(page).to have_button 'Paper'
      expect(page).to have_button 'Scissors'
    end
end