feather "Enter your name" do
  scenario "user can fill in and submit name" do
    visit("/")
    fill_in("player1", with: "Robert")
    click_button("Start Game")
    expect(page).to have_content "Robert"
  end
end
