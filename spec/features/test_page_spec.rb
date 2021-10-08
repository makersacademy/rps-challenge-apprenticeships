feature "test page" do
  scenario "visit test page" do
    visit "/test"
    expect(page).to have_content("test page")
  end

  scenario "visit home page" do
    visit "/"
    expect(page).to have_content("Please enter your name:")
  end
end
