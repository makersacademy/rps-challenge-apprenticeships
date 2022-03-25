feature 'adding player name' do
  scenario 'the player can submit their name before playing the game' do
    visit('/')
    fill_in 'player_one', with: 'Homer'
    click_button 'Submit'
    expect(page.html).to include("<h1>Welcome to the game, Homer</h1>")
  end
end
