feature 'test page' do
  scenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('Test page')
  end
end

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'register name' do
  scenario 'player submits name and views on screen' do
    register_and_play
    expect(page).to have_content 'Jay'
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

# As a marketeer
# So I can play a game
# I want to see the choices: Rock, Paper, Scissors
feature 'playing a game' do
  before do
    register_and_play
  end
  scenario 'see options' do
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'

  end
end
