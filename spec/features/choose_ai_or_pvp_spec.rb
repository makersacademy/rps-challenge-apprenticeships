feature 'choose to play vs AI or another player' do
  scenario 'the player chooses to play vs AI' do
    visit('/')
    click_button 'Play vs AI'
    fill_in 'player_one', with: 'Homer'
    click_button 'Submit'
    expect(page.html).to include("<h1>Homer, make your choice</h1>")
  end

  scenario 'the player chooses to play vs another player' do
    visit('/')
    click_button 'Player vs Player'
    fill_in 'player_one', with: 'Homer'
    fill_in 'player_one', with: 'Marge'
    click_button 'Submit'
    click_button 'rock'
    expect(page.html).to include("<h1>Marge, make your choice</h1>")
  end
end
