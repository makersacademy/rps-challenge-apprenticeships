feature 'game' do
  scenario 'the player chooses rock and is able to submit it' do
    fill_in_name_and_choose_rock
    expect(page).to have_content 'You selected Rock'
  end

  scenario 'the player chooses paper and is able to submit it' do
    fill_in_name_and_choose_paper
    expect(page).to have_content 'You selected Paper'
  end

  scenario 'the player chooses scissors and is able to submit it' do
    fill_in_name_and_choose_scissors
    expect(page).to have_content 'You selected Scissors'
  end

  scenario 'there is a button to play a new game' do
    fill_in_name_and_choose_rock
    expect(page).to have_button('Play Again')
  end

  scenario 'clicking Play Again returns the player to the selection screen' do
    fill_in_name_and_choose_rock
    click_button 'Play Again'
    expect(page).to have_content('Choose your weapon')
  end
end
