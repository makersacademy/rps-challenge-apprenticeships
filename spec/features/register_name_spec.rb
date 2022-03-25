feature 'adding player name' do
  scenario 'the players can submit their names before playing the game' do
    visit('/')
    fill_in 'player_one', with: 'Homer'
    fill_in 'player_two', with: 'Marge'
    click_button 'Submit'
    expect(page.html).to include("<h1>Homer, make your choice</h1>")
  end
end
