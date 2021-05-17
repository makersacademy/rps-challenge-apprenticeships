feature 'Feature - Play Single Player' do

  before :each do
    srand(1)
  end

  scenario 'play rock' do
    register_for_singleplayer_and_play
    click_button 'Rock'
    expect(page).to have_content 'Emily played Rock'
  end

  scenario 'play paper' do
    register_for_singleplayer_and_play
    click_button 'Paper'
    expect(page).to have_content 'Emily played Paper'
  end

  scenario 'play scissors' do
    register_for_singleplayer_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Emily played Scissors'
  end

  scenario 'play lizard' do
    register_for_singleplayer_and_play_spock_variant
    click_button 'Lizard'
    expect(page).to have_content 'Emily played Lizard'
  end

  scenario 'play spock' do
    register_for_singleplayer_and_play_spock_variant
    click_button 'Spock'
    expect(page).to have_content 'Emily played Spock'
  end

  scenario 'computer returns a random entry' do
    register_for_singleplayer_and_play
    click_button 'Rock'
    expect(page).to have_content(/Computer played (Rock|Paper|Scissors)/)
  end

  scenario 'winner or loser' do
    register_for_singleplayer_and_play
    click_button 'Rock'
    expect(page).to have_content("Computer Wins!!!")
  end

  scenario 'draw' do
    register_for_singleplayer_and_play
    click_button 'Paper'
    expect(page).to have_content "Draw"
  end

  scenario 'checks for expert game to include lizard' do
    register_for_singleplayer_and_play_spock_variant
    expect(page).to have_button('Lizard')
  end

  scenario 'checks for expert game to include spock' do
    register_for_singleplayer_and_play_spock_variant
    expect(page).to have_button('Spock')
  end
  scenario 'checks for classic game to not include lizard' do
    register_for_singleplayer_and_play
    expect(page).not_to have_button('Lizard')
  end

  scenario 'checks for classic game to not include spock' do
    register_for_singleplayer_and_play
    expect(page).not_to have_button('Spock')
  end

end

feature 'Feature - Play Multiplayer' do

  before :each do
    srand(1)
  end

  scenario 'Player 1 turn' do
    register_for_multiplayer_and_play
    expect(page).to have_content "Emily, it's your turn"
  end

  scenario 'Player 2 turn' do
    register_for_multiplayer_and_play
    click_button 'Rock'
    expect(page).to have_content "Monty, it's your turn"
  end

  scenario 'rock and rock returns draw' do
    register_for_multiplayer_and_play
    click_button 'Rock'
    click_button 'Rock'
    expect(page).to have_content "Draw"
  end

  scenario 'rock and paper returns player 2 wins' do
    register_for_multiplayer_and_play
    click_button 'Rock'
    click_button 'Paper'
    expect(page).to have_content "Monty Wins!!!"
  end
end
