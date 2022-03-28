feature 'The player can type their name' do
  scenario 'player submit their name' do
      visit('/')
      fill_in :name, with: 'Tia'
      click_button 'Start'
      expect(page).to have_text "Let's start Tia"
  end
end