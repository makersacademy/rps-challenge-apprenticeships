feature 'shows a button to play again' do
  
  context 'when in multiplayer mode' do
    scenario 'after a game, you can play again' do
      sign_in_and_start_multiplayer 
      click_button('Rock')
      click_button('Scissors')
      expect(page).to have_button('Play Again')
    end
  end
  context 'when in singleplayer mode' do
    scenario 'after a game, you can play again' do
      sign_in_and_start_singleplayer
      click_button('Rock')
      expect(page).to have_button('Play Again')
    end
  end
end
