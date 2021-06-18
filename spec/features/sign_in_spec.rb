feature 'players register names' do
    scenario 'save player names' do
      sign_in_and_play
      expect(page).to have_content('Anita')
    end
  end