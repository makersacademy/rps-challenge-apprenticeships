feature 'number of players' do  
  scenario 'the player can choose to play a single player game' do
    visit ('/')
    expect(page).to have_button('Single Player Game')
  end

  scenario 'the player can choose to play a two player game' do
    visit ('/')
    expect(page).to have_button('Two Player Game')
  end
end
