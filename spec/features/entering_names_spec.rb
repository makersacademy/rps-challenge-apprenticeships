feature 'Enter names' do
    scenario 'submitting names' do
      visit('/names')
      fill_in :player_1_name, with: 'Tom'
      click_button 'Submit'
      expect(page).to have_content 'Tom'
    end
  end