feature 'choose to play vs AI or another player' do
  scenario 'the player chooses to play vs AI' do
    visit('/')
    click_button 'Play vs AI'
    fill_in 'player_one', with: 'Homer'
    click_button 'Submit'
    expect(page.html).to include("<h1>Homer, make your choice</h1>")
  end
end
