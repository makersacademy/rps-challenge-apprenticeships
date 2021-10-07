feature "the home page" do
  before(:each) do
    visit "/"
  end

  scenario "the home page returns a successful status code" do
    expect(page.status_code).to eq 200
  end

  scenario "the home page contains a title" do
    expect(page).to have_content "Rock, Paper, Scissors"
  end

  scenario "a user can enter their name" do
    fill_in "name", with: "Tina"
    click_button("Let's play!")
    expect(page).to have_content "Welcome Tina!"
  end
end
