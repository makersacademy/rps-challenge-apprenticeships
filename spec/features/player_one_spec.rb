feature 'player one chooses an option' do
  scenario 'can see welcome' do
    sign_in_and_play
    expect(page).to have_content "Welcome Player 1!"
    expect(page).to have_content "Welcome Player 2!"
  end

  scenario 'player one selects an option' do
    sign_in_and_play
    choose 'first_player_game', option: 'Paper'
    click_button 'Play!'
    expect(page).to have_content "Player 2 select one option:"
  end
end