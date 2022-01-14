feature 'shows the winner of the game' do
  scenario 'rock beats scissors' do
    sign_in_and_start_multiplayer 
    click_button('Rock')
    click_button('Scissors')
    expect(page).to have_content('Freddy won')
  end
  scenario 'rock vs rock is a draw' do
    sign_in_and_start_multiplayer 
    click_button('Rock')
    click_button('Rock')
    expect(page).to have_content('Draw')
  end
end
