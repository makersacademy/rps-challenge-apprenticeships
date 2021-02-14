feature 'number of players' do  
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
    expect(page).to have_field('player_1', type: 'text')
    expect(page).to have_field('player_2', type: 'text')    
  end
end
