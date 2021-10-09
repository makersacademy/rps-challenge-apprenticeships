require "./app"

feature "player name" do
  scenario "the home page prompts user to enter a name" do
    visit "/"
    fill_in :player1_name, with: "Delia"
    click_button "Start Game"
    expect(page).to have_content("Are you ready, Delia?")
  end
end
