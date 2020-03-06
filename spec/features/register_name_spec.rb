feature "Enter name" do
  scenario "register name" do
    visit('/')
    fill_in :player_name, with: "Jo"
    click_button "Submit"
  expect(page).to have_content("Jo")
  end
end
