require './app'

feature 'offer options to player_1' do
    scenario 'Player can choose from Rock, Paper or Scissors' do
        visit ("/options") 
        click_button 'Play!' 
        click_button 'Play!' 
        click_button 'Play!' 
      expect(page).to have_content('Rock', 'Paper', 'Scissors')
    end
end