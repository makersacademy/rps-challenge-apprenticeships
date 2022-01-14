feature 'shows a button to play again' do
  scenario 'after a game, you can play again' do
    sign_in_and_start_multiplayer 
    click_button('Rock')
    click_button('Scissors')
    expect(page).to have_button('Play Again')
  end
end
