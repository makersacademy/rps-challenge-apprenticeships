feature "Enter names" do
  scenario "submitting names" do
    visit("/")
    fill_in :player_name, with: "Jim"
    click_button "Register"
    expect(page).to have_content "Welcome Jim!"
  end
end
