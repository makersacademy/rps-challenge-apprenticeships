feature 'multiplayer' do
  scenario 'visit front multiplayer mode and see the elements' do
    visit '/'
    click_button("3.  Player vs Player ")
    expect(page).to have_content("ROCK PAPER SCISSORS LIZARD SPOCK!")
  end
  scenario 'visit front multiplayer mode and see the elements' do
    visit '/'
    click_button("3.  Player vs Player ")
    expect(page).to have_content("Name yourself players!")
  end
  scenario 'visit front multiplayer mode and get back to menu' do
    visit '/'
    click_button("3.  Player vs Player ")
    click_button("Back to Main Menu")
    expect(page).to have_current_path("/")
  end
  scenario 'visit front nultiplayer mode and enter players names' do
    visit '/'
    click_button("3.  Player vs Player ")
    fill_in "player1", with: "Name1"
    fill_in "player2", with: "Name2"
    click_button("Fight!")
    expect(page).to have_current_path("/multigame1")
  end
  scenario 'visit front multiplayer mode and play a tied game' do
    visit '/'
    click_button("3.  Player vs Player ")
    fill_in "player1", with: "Name1"
    fill_in "player2", with: "Name2"
    click_button("Fight!")
    click_button("paper")
    click_button("paper")
    expect(page).to have_content("tied")
  end
  scenario 'visit front multiplayer mode and play a wining game' do
    visit '/'
    click_button("3.  Player vs Player ")
    fill_in "player1", with: "Name1"
    fill_in "player2", with: "Name2"
    click_button("Fight!")
    click_button("paper")
    click_button("rock")
    expect(page).to have_content("won")
  end
  scenario 'visit front multiplayer mode and play a losing game' do
    visit '/'
    click_button("3.  Player vs Player ")
    fill_in "player1", with: "Name1"
    fill_in "player2", with: "Name2"
    click_button("Fight!")
    click_button("spock")
    click_button("lizard")
    expect(page).to have_content("lost")
  end
end
