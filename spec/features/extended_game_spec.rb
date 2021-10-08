feature 'Extended game' do
  scenario 'Has extended game buttons' do
    # Sets computer choice to 'Lizard'
    extended_game_start

    expect(page).to have_button('Lizard')
    expect(page).to have_button('Spock')
  end

  scenario 'computer wins' do  
    extended_game_start

    click_button 'Spock'
    expect(page).to have_content 'Computer wins'
  end

  scenario 'user wins' do  
    extended_game_start

    click_button 'Rock'
    expect(page).to have_content 'Player wins!'
  end

  scenario 'draw' do  
    extended_game_start

    click_button 'Lizard'
    expect(page).to have_content "It's a draw"
  end

end
