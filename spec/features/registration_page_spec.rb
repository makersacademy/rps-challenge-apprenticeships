feature "the home page" do
  scenario "the home page returns a successful status code" do
    visit "/"
    expect(page.status_code).to eq 200
  end

  scenario "the home page contains a title" do
    visit "/"
    expect(page).to have_content "Rock, Paper, Scissors"
  end

  scenario "a user can enter their name" do
    sign_in_and_play
    expect(page).to have_content "Welcome Tina"
  end
end
