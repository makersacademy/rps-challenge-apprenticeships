feature 'play the game' do
  scenario 'both players can make a choice' do
    sign_in_and_play_vs_ai
    click_button 'rock'
    expect(page.html).to include("<h1>Game result</h1>")
  end

  xscenario 'the player can click a button to play again' do
    sign_in_and_play_vs_ai
    click_button 'rock'
    click_button 'Play again'
    expect(page.html).to include("<h1>Welcome to the game, Homer</h1>")
  end
end
