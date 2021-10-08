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
  scenario "clicking submit posts to /play" do
    visit "/"
    fill_in "name", with: "Graham"
    click_button
    expect(page).to have_content "Hello Graham"
    expect(current_path).to eq "/play"
  end
end
