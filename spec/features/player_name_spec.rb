feature "Player Name" do
  scenario "player enters name at welcome screen" do
    visit('/')
    fill_in :player1_name, with: 'Ben'
    click_button('Go!')
    expect(page).to have_content "Welcome to the game, Ben"
  end
end
