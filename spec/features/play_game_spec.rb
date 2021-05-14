feature 'Takes player to game page' do
  scenario 'player starts the game, and chooses rock' do
    sign_in_play
    click_button "Rock"
    expect(page).to have_content 'You chose rock!'
  end

  scenario 'Player 1 chose paper' do
    sign_in_play
    click_button "Paper"
    expect(page).to have_content 'You chose paper!'
  end

  scenario 'Player 1 chose scissors' do
    sign_in_play
    click_button "Scissors"
    expect(page).to have_content "You chose scissors!"
  end
end