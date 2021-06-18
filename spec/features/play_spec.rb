# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'play game rock-paper-scissors' do

  scenario 'player is presented the choices (rock, paper and scissors)' do
    visit '/'
    fill_in :name, with: 'Super Mario'
    click_button 'Start Game'
    expect(page).to have_selector(:link_or_button, 'ROCK')
    expect(page).to have_selector(:link_or_button, 'PAPER')
    expect(page).to have_selector(:link_or_button, 'SCISSORS')
  end

  scenario 'player can choose one option' do
    visit '/'
    fill_in :name, with: 'Super Mario'
    click_button 'Start Game'
    random_pick = ["ROCK", "PAPER", "SCISSORS"].sample
    click_button random_pick
    expect(page).to have_content("You picked #{random_pick}")
  end

  scenario 'game will choose a random option' do
    visit '/'
    fill_in :name, with: 'Super Mario'
    click_button 'Start Game'
    srand(4)
    click_button "PAPER"
    expect(page).to have_content("and Darth Vader picked SCISSORS")
  end

  scenario 'a winner is declared' do
    visit '/'
    fill_in :name, with: 'Super Mario'
    click_button 'Start Game'
    srand(7)
    click_button "PAPER"
    expect(page).to have_content("You WIN!")
  end

  scenario 'a draw is declared' do
    visit '/'
    fill_in :name, with: 'Super Mario'
    click_button 'Start Game'
    srand(7)
    click_button "ROCK"
    expect(page).to have_content("It's a DRAW!")
  end
end