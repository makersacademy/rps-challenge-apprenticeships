feature 'Player can start a new game' do
  scenario 'start new game with same player' do
    sign_in_and_choose_rock
    click_button('Play again as Quincy')
    expect(page).to have_content('Welcome Quincy')
  end

  scenario 'start new game with different player' do
    sign_in_and_choose_rock
    click_button('Play again as new player')
    expect(page).to have_content('Let\'s play Rock Paper Scissors')
  end

  scenario 'don\'t start new game' do
    sign_in_and_choose_rock
    click_button('Leave game')
    expect(page).to have_content('Thanks for playing, Quincy!')
  end
end