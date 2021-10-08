feature 'two player home page' do
  scenario 'users enters their names and taken to /two_player_game' do
    two_player_start
    
    expect(page).to have_content('Enter your choice, Foo:')
  end

  scenario 'first player enters choice, second player is asked for their choice' do
    two_player_start

    click_button 'Rock'

    expect(page).to have_content('Enter your choice, Bar')
  end

  scenario 'first player and second player enter their choices, winner decided' do
    two_player_start

    # First player (Foo) choice
    click_button 'Rock'
    # Second player (Bar) choice
    click_button 'Paper'

    expect(page).to have_content('Bar wins')
  end
end
