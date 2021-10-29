feature 'register page' do
    scenario 'fill in players names and display them' do
      visit ('/')
      fill_in :player_1_name, with: 'Yaz'
      fill_in :player_2_name, with: 'Luke'
      click_button 'PLAY'

    #   save_and_open_page 

      expect(page).to have_content 'Yaz vs. Luke'
    end
  end