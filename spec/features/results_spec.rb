feature "results" do
  before do
    visit("/")
    fill_in :player_name, with: "Jim"
    click_button "Submit"
    click_button "Rock"
  end
  scenario "player choice displayed" do
    expect(page).to have_content "You chose Rock!"
  end
end
