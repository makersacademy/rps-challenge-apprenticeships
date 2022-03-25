feature 'adding player name' do
  scenario 'the player can submit their name before playing the game' do
    visit('/')
    fill_in 'player_one', with: 'Billy'
    click_button 'Submit'
    expect(page.html).to include("<h1>Welcome to the game, Billy</h1>")
  end
end
