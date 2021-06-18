feature 'players register names' do
    scenario 'save player names' do
      visit '/'
      fill_in('player', with: 'Anita')
      click_button('submit')
      expect(page).to have_content('Anita')
    end
  end