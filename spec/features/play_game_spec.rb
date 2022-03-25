feature 'play the game' do
  scenario 'the player makes a choice against the ai and sees the result' do
    sign_in_and_play
    click_button 'rock'
    expect(page.html).to include("<h1>Game result</h1>")
  end

  scenario 'the player can click a button to play again' do
    sign_in_and_play
    click_button 'rock'
    click_button 'Play again'
    expect(page.html).to include("<h1>Welcome to the game, Homer</h1>")
  end
end
