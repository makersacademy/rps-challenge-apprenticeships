describe RockPaperScissors do
  feature 'pre game' do
    scenario 'entering player name' do
      sign_in_and_play
      expect(page).to have_content('Player name is Kelvin')
    end
  end
end
