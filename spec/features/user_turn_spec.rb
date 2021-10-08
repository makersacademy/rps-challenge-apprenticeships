feature "user's turn" do
  scenario "user chooses  an RPS value" do
    visit("/")
    fill_in "name", with: "sunny"
    click_button "Submit"
    click_button "scissors"
    expect(page).to have_content "sunny chose scissors"


  end
end
