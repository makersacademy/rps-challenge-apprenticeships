feature "enter player name" do
  scenario "user enters a player name" do
    visit "/"
    fill_in "player_name", with: "Steve"
    click_button("Submit")
    expect(page).to have_content("Steve VS Computer")
  end
end
