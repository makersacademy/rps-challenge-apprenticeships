feature "register name" do
  scenario "user enters their name on the home page" do
    visit('/')
    fill_in "name", with: "Sunny"
    click_button "Submit"
    expect(page).to have_content("Sunny vs bot")

  end
end