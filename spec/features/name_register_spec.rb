require './app'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature '#play' do 
  scenario 'entering players name' do 
      visit '/'
      fill_in :player, with: 'Shanice'
      click_button 'Submit'
      expect(page).to have_content 'Player registered: Shanice'
  end 
end 