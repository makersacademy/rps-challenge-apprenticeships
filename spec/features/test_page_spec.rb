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
    expect(page).to have_selector "input[type=radio][value=rock]"
    expect(page).to have_selector "input[type=radio][value=paper]"
    expect(page).to have_selector "input[type=radio][value=scissors]"
  end
  scenario "pressing play posts to /result" do
    save_and_open_page
    choose "Rock"
    click_on "Play"
    expect(current_path).to eq "/result"
  end
  # scenario "cpu_choice created" do
  #   expect(cpu_choice).to have_content(cpu_choice)
  # end
end

feature "result"
