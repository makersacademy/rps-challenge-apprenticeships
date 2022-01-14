feature "view winner" do
  scenario "test_player_one wins" do
    sign_in
    click_button "Rock"
    click_button "Scissors"
    expect(page).to have_content "test_player_one wins!"
  end

  scenario "test_player_two wins" do
    sign_in
    click_button "Rock"
    click_button "Paper"
    expect(page).to have_content "test_player_two wins!"
  end
end
