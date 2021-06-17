# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'play game rock-paper-scissors' do

  # the marketeer will be presented the choices (rock, paper and scissors)
  scenario 'enter name in home page' do
    visit '/'
    fill_in :name, with: "Super Mario"
    click_button 'Start Game'
    expect(page).to have_selector(:link_or_button, 'ROCK')
    expect(page).to have_selector(:link_or_button, 'PAPER')
    expect(page).to have_selector(:link_or_button, 'SCISSORS')
  end
end