feature "endgame buttons" do
  scenario "play again redirects to move selector" do
    p1_wins
    click_button "Play Again"
    expect(page).to have_content "test_player_one, make your move!"
  end

  scenario "reset redirects to /" do
    p1_wins
    click_button "Reset"
    expect(page).to have_content "This is Rock, Paper, Scissors"
  end
end
