feature 'single player' do
  scenario 'show front page for single player mode and see all game characters' do
    visit('/')
    click_button("2. Player vs Computer")
    expect(page).to have_content("ROCK PAPER SCISSORS LIZARD SPOCK!")
  end

  scenario 'show front page for single player mode and offer player to select their name' do
    visit('/')
    click_button("2. Player vs Computer")
    expect(page).to have_content("Please enter your name!")
  end
end