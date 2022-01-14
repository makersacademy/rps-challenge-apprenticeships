feature 'shows a button to play again' do
  scenario 'after a game, you can play again' do
    visit('/')
    fill_in('Player 1', with: 'Freddy')
    fill_in('Player 2', with: 'Jason')
    click_button('Start')
    click_button('Rock')
    click_button('Scissors')
    expect(page).to have_button('Play Again')
  end
end
