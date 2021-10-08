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
    fill_in "name", with: "Liz"
    click_button
    expect(current_path).to eq "/play"
  end
end

feature "play" do
  before do
    visit "/"
    fill_in "name", with: "Steve"
    click_button "Submit"
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
    choose "Rock"
    click_on "Play"
    expect(current_path).to eq "/result"
  end
end

feature "result" do
  before do
    visit "/"
    fill_in "name", with: "Kim"
    click_button
    choose "Rock"
    click_on "Play"
  end
  scenario "cpu_choice created" do
    expect(page).to have_content @cpu_choice
  end
  scenario "page states user's choice" do
    expect(page).to have_content "Kim: rock"
  end
  scenario "page states computer's choice" do
    expect(page).to have_content "Computer: " # How do I use a double here?
  end
  scenario "asks the user if they would like to play again" do
    expect(page).to have_content "Would you like to play again?"
  end
end

feature "end" do
  scenario "says goodbye to user" do
    visit "/end"
    expect(page).to have_content "Goodbye"
  end
end
