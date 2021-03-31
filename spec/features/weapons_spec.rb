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
    scenario 'choose a weapon' do
      click_button 'Rock'
      expect(page).to have_content 'You chose Rock'
    end
    scenario 'choose a weapon' do
      click_button 'Scissors'
      expect(page).to have_content 'You chose Scissors'
    end
    scenario 'choose a weapon' do
      click_button 'Paper'
      expect(page).to have_content 'You chose Paper'
    end

    scenario 'computer chooses a random option' do
      srand(221563)
      click_button 'Rock'
      expect(page).to have_content 'Opponent chose Scissors'
    end

    scenario 'you win' do
      srand(221563)
      click_button 'Rock'
      expect(page).to have_content 'You win!'
    end
end