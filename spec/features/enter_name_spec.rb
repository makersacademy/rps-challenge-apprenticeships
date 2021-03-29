require 'capybara'

feature 'Enter name' do
    scenario 'submitting name' do
      visit('/')
      fill_in :name, with: 'Player'
      click_button 'Submit'

      save_and_open_page 

      expect(page).to have_content 'Welcome Player'
    end
end

