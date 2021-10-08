feature "Enter names" do
  scenario "Player enters their name" do
    visit '/names'
    fill_in :player_name, with: "Ana"
    click_button "Start game"
    expect(page).to have_content "Hello Ana, welcome to Rock/Paper/Scissors"
  end
end
