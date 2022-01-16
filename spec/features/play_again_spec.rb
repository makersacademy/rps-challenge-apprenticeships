feature 'play again' do
  scenario 'you can start the game over'do
  register_and_play
  click_button 'Rock'
  click_button 'Play again'
  expect(page).to have_content('your move!")
  end

end