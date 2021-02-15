feature 'game' do
  scenario 'the player chooses rock and is able to submit it' do
    fill_in_name_and_choose_rock
    expect(page).to have_content 'JoJo selected Rock'
  end

  scenario 'the player chooses paper and is able to submit it' do
    fill_in_name_and_choose_paper
    expect(page).to have_content 'JoJo selected Paper'
  end

  scenario 'the player chooses scissors and is able to submit it' do
    fill_in_name_and_choose_scissors
    expect(page).to have_content 'JoJo selected Scissors'
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

  context 'clicking Quit returns to the initial screen' do
    scenario 'on the selection screen' do
      fill_in_name_and_choose_rock
      click_button 'Play Again'
      click_button 'Quit'
      expect(page).to have_field('player_1_name', type: 'text')
    end

    scenario 'on the results screen' do
      fill_in_name_and_choose_rock
      click_button 'Quit'
      expect(page).to have_field('player_1_name', type: 'text')
    end
  end
end
