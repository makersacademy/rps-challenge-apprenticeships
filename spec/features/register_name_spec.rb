feature "Register player name" do
  scenario "Player fills out the form with their name" do
    visit("/")
    fill_in("player_name", with: "Cleo")
    click_button("Play")
    expect(page).to have_content("Your move, Cleo")
  end
end
