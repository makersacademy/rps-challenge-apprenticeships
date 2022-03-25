feature 'player two chooses an option' do
  scenario 'can see welcome ' do
    sign_in_and_play
    choose 'first_player_game', option: 'Paper'
    click_button 'Play!'
    expect(page).to have_content "Player 2 select one option:"
  end

  scenario 'player two chooses scissors' do
    sign_in_and_play
    choose 'first_player_game', option: 'Paper'
    click_button 'Play!'
    choose 'second_player_game', option: 'Scissors'
    click_button 'Play!'
    expect(page).to have_content "Player 1 chose: Paper"
    expect(page).to have_content "Player 2 chose: Scissors"
    expect(page).to have_content "Player 2 wins!"
  end


end