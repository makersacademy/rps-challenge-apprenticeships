feature "test page" do
  scenario "visit test page" do
    visit "/test"
    expect(page).to have_content("test page")
  end
end

feature "home page" do
  scenario "visit home page" do
    visit "/"
    expect(page).to have_button("Submit")
  end
end
