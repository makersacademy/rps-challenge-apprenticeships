feature 'can choose to play a single player or two player game' do  
  scenario 'the player can choose to play a single player game' do
    visit '/'
    expect(page).to have_content('To start a single player game')
  end

  scenario 'the player can choose to play a two player game' do
    visit '/'
    expect(page).to have_button('Two Player Game')
  end

  scenario 'two player names are requested after selecting the two player option' do
    visit '/'
    click_button 'Two Player Game'
    expect(page).to have_field('player_1_name', type: 'text')
    expect(page).to have_field('player_2_name', type: 'text')    
  end

  scenario 'the player is presented with player ones choice after entering two names' do
    start_a_two_player_game
    expect(page).to have_content('Choose your weapon, JoJo')
  end

  scenario 'when playing a two player game, after player one selects a weapon, player two does' do
    start_a_two_player_game
    choose 'Rock'
    click_button 'Submit'
    expect(page).to have_content('Choose your weapon, Dio')
  end

  scenario 'after both player have selected their weapon, the result is diplayed' do
    play_a_two_player_round
    expect(page).to have_content('JoJo selected Rock')
    expect(page).to have_content('Dio selected Scissors')
    expect(page).to have_content('JoJo wins!')
  end
end
