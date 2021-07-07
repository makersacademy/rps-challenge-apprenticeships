require './app'

feature 'Register to play' do
    scenario 'Player can register name to play RPS' do
      visit("/")
      fill_in 'player_1_name' , with: (@player_1_name)
      click_button 'Submit'
      expect(page).to have_content (player_1_name)
  end
end



