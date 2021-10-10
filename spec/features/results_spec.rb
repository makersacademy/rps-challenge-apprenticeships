feature "results" do
  before do
    visit("/")
    fill_in :player_name, with: "Jim"
    click_button "Submit"
  end
  scenario "player choice displayed" do
    click_button "Rock"
    expect(page).to have_content "You chose Rock!"
  end
  scenario "computer choice displayed" do
    allow_any_instance_of(Computer).to receive(:choice).and_return("Rock")
    visit "/results"
    expect(page).to have_content "Computer chose Rock!"
  end
end
