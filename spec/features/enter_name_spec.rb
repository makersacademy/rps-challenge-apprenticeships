# the marketeer should be able to enter their name before the game
feature 'players register their names' do
  scenario 'entering names' do
    visit('/')
    fill_in :player1, with: 'Phoebe'
    fill_in :player2, with: 'Ross'
    click_button 'Go!'
    expect(page).to have_content('Phoebe plays against Ross')
  end
end