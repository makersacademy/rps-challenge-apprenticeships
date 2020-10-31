feature "Choose throw" do
  scenario "Displays the option player chose" do
    visit('/')
    fill_in :player_name, with: "player"
    click_button "Submit"
    click_button "Rock"
    expect(page).to have_content("You chose Rock")
  end
end
