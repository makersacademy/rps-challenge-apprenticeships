describe RockPaperScissors do
  feature 'pre game' do
    scenario 'entering player name' do
      enter_name
      expect(page).to have_content('Player is Kelvin, Enjoy the game')
    end
  end
end
