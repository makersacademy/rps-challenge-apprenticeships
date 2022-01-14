feature 'shows the winner of the game' do
  scenario 'rock beats scissors' do
    visit('/')
    fill_in('Player 1', with: 'Freddy')
    fill_in('Player 2', with: 'Jason')
    click_button('Start')
    click_button('Rock')
    click_button('Scissors')
    expect(page).to have_content('Freddy won')
  end

end