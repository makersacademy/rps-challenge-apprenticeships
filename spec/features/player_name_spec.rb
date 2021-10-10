feature 'Enter name' do
    scenario 'submitting name' do
      visit('/')
      fill_in :player_name, with: 'Makers'
      click_button 'Submit'
      expect(page).to have_content 'Makers'
    end
  end