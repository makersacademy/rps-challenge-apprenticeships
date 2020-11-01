feature "Enter name" do
  scenario "Allow player to enter their name" do
    visit('/')
    fill_in :player_name, with: "player"
    click_button "Submit"
    expect(page).to have_content "Hello player, what will you choose?"
  end
end
