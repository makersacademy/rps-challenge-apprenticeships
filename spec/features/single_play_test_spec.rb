feature 'single play' do
  scenario 'visit front single player mode and see the elements' do
    visit '/'
    click_button("2. Player vs Computer")
    expect(page).to have_content("ROCK PAPER SCISSORS LIZARD SPOCK!")
  end
  scenario 'visit front single player mode and see the elements' do
    visit '/'
    click_button("2. Player vs Computer")
    expect(page).to have_content("Name yourself player!")
  end
  scenario 'visit front single player mode and get back to menu' do
    visit '/'
    click_button("2. Player vs Computer")
    click_button("Back to Main Menu")
    expect(page).to have_current_path("/")
  end
  scenario 'visit front single player mode and enter players name' do
    visit '/'
    click_button("2. Player vs Computer")
    fill_in "player1", with: "Name"
    click_button("Go!")
    expect(page).to have_current_path("/sologame")
  end
  scenario 'visit front single player mode and play a game and get back to menu' do
    visit '/'
    click_button("2. Player vs Computer")
    fill_in "player1", with: "Name"
    click_button("Go!")
    click_button("spock")
    click_button("Back to Main Menu")
    expect(page).to have_current_path("/")
  end
end
