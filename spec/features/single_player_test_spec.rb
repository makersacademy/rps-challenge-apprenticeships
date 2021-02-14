feature 'single player' do
  scenario 'visit single player mode front page and see RPSLS characters' do
    visit('/')
    click_button("2. Player vs Computer")
    expect(page).to have_content("ROCK PAPER SCISSORS LIZARD SPOCK!")
  end

  scenario 'visit single player mode front page and see enter name prompt' do
    visit('/')
    click_button("2. Player vs Computer")
    expect(page).to have_content("Please enter your name!")
  end

  scenario 'visit single player mode front page and return to main menu' do
    visit('/')
    click_button("2. Player vs Computer")
    click_button("Return to main menu")
    expect(page).to have_current_path("/")
  end

  scenario 'visit single player mode front page and enter players name' do
    visit('/')
    click_button("2. Player vs Computer")
    fill_in("player", with: "Vincenzo")
    click_button("Play Game!")
    expect(page).to have_current_path("/single-player-game")
  end

  scenario 'visit single player mode front page and enter players name' do
    visit('/')
    click_button("2. Player vs Computer")
    fill_in("player", with: "Vincenzo")
    click_button("Play Game!")
    click_button("rock")
    click_button("Return to main menu")
    expect(page).to have_current_path("/")
  end
end