feature 'Play the game' do
  scenario 'Allows players to play against each other' do
    visit('/fight')
    expect(page).to have_content ('1,2,3..Rock, Paper, Scissors!')
  end
end
