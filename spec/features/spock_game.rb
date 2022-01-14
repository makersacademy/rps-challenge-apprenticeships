feature "spock game" do
  scenario "starts spock game" do
    start_spock_game
    expect(page).to have_selector(:button, "Lizard")
  end

  scenario "it starts a spock game at the end of a normal game" do
    p1_wins
    check("spock_game")
    click_button("Play Again")
    expect(page).to have_selector(:button, "Lizard")
  end
end
