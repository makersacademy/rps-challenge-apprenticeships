feature "Entering name" do
  scenario "submits player's name" do
    visit "/star-the-game"
    fill_in "name", with: "Alex"
    click_button "Go!"
    expect(page).to have_content "Game starts!"
  end
end
