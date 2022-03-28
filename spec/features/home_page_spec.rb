require './app'

feature 'home page' do
  scenario 'visit home page' do
    visit '/'
    expect(page).to have_content "Welcome to Rock, Paper Scissors!\nPlease enter your name:"
  end
end

feature 'Enter player name' do
  scenario "allows player to enter their name, submit it, and redirect to the play page" do
    visit '/'
    fill_in "player_name", with: "Chris"
    click_button "Go!"
    visit '/play'
    expect(page).to have_content "Welcome to RPS Chris!"
  end
end