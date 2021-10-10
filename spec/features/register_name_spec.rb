require "spec_helper"

feature "Register name" do
  scenario "registers player name" do
    visit("/")
    fill_in :player_name, with: "Plumbus"
    click_button "Submit"
    expect(page).to have_content "Welcome Plumbus!"
  end
end
