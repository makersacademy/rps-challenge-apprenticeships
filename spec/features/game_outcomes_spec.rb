
  feature 'post game' do
    scenario 'selecting rock' do
      enter_name
      click_button 'Rock'
      expect(page).to have_content('')
    end
  end
