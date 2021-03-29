feature 'Welcome page' do
  scenario 'Player is asked to submit name' do
    visit '/'
    expect(page).to have_content 'Please fill in your name to start playing.'
  end
end

feature 'Start game' do
  scenario 'Player submits name to start game' do
    sign_in_and_play
    expect(page).to have_content 'Hi, Rob, please make your move.'
  end

  scenario 'Player is presented with the available moves' do
    sign_in_and_play
    expect(page).to have_content 'Choose: Rock, Paper or Scissors'
  end
end
