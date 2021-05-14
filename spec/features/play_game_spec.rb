feature 'Takes player to game page' do
  scenario 'player starts the game, and chooses rock' do
    sign_in_play
    click_button "Rock"
    expect(page).to have_content 'You chose rock!'
  end
end