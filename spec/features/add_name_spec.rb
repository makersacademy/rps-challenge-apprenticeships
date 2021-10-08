feature "form" do
  scenario "allows the player to fill in their name and see them on screen" do
    visit "/"
    fill_in("player_1", with: "John Doe")
    click_button "Submit"
    expect(page).to have_content "John Doe"
  end
end
