# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Enter name' do
    scenario 'submitting name' do
      visit('/')
      fill_in :name, with: 'Richard'
      click_button 'Submit'

      save_and_open_page

      expect(page).to have_content "Welcome, Richard! Let's play Rock, Paper, Scissors!"
    end
end