feature 'home page' do
  scenario 'ask user to choose single or two player' do
    visit '/'
    expect(page).to have_button('Single Player')
    expect(page).to have_button('Two Player')
  end

  scenario 'selecting single player takes user to single_player_index' do
    visit '/'
    click_button 'Single Player'
    expect(page).to have_content('Enter your name:')
  end

  scenario 'selecting two player takes user to two_player_index' do
    visit '/'
    click_button 'Two Player'
    expect(page).to have_content('Enter your name, Player 1:')
    expect(page).to have_content('Enter your name, Player 2:')
  end
end
