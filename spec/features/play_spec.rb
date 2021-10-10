require "spec_helper"

feature "gameplay" do
  before do
    visit("/")
    fill_in :player_name, with: "Jim"
    click_button "Submit"
  end

  scenario "can see rock, paper, scissors options" do
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end
end
