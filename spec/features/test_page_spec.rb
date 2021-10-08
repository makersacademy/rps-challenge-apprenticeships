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
    expect(current_path).to eq "/play"
  end
end

feature "play" do
  before do
    visit "/"
    fill_in "name", with: "Steve"
    click_button
  end
  scenario "greets user" do
    expect(page).to have_content "Hello Steve"
  end
  scenario "asks user for input" do
    expect(page).to have_content "Rock, Paper or Scissors?"
  end
  scenario "includes 3 radio buttons" do
    expect(page).to have_selector "input[type=radio][value=Rock]"
    expect(page).to have_selector "input[type=radio][value=Paper]"
    expect(page).to have_selector "input[type=radio][value=Scissors]"
  end
end
