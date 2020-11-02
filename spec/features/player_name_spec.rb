feature "Player Name" do
  scenario "player enters name at welcome screen" do
    sign_in_and_play()
    expect(page).to have_content "Welcome to the game, Ben"
  end
end
