feature 'Checks register page' do 

  scenario 'checks we have options to input a player' do 

    register_page
    expect(page).to have_content('Player 1:')
    click_on "MULTIPLAYER"
    expect(page).to have_content 'Player 1:' && 'Player 2:'
    click_on "SOLO"
    expect(page).to have_content('Player 1:')

  end 

  scenario 'checks we have solo and multiplayer options' do 

    register_page
    expect(page).to have_selector(:link_or_button, "SOLO")
    expect(page).to have_selector(:link_or_button, "MULTIPLAYER")
  end 

end 