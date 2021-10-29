feature 'register page' do
    scenario 'fill in players names and display them' do
     sign_in_and_play
    #   save_and_open_page 
      expect(page).to have_content 'Yaz vs. Luke'
    end
  end