require_relative 'web_helpers'

feature 'multiplayer' do

  scenario 'player 1 rock player 2 chooses rock' do
    multiplayer_sign_in
    click_button 'Rock'
    click_button 'Rock'
    expect(page).to have_content 'Draw! Harry & Eloise both chose Rock!'
  end

  scenario 'player 1 chooses rock player 2 chooses paper' do
    multiplayer_sign_in
    click_button 'Rock'
    click_button 'Paper'
    expect(page).to have_content 'Eloise wins! Paper beats Rock!'
  end

  scenario 'player 1 rock player 2 scissors' do
    multiplayer_sign_in
    click_button 'Rock'
    click_button 'Scissors'
    expect(page).to have_content 'Harry wins! Rock beats Scissors!'
  end

  scenario 'player 1 chooses paper player 2 chooses rock' do
    multiplayer_sign_in
    click_button 'Paper'
    click_button 'Rock'
    expect(page).to have_content 'Harry wins! Paper beats Rock!'
  end

  scenario 'player 1 paper player 2 chooses paper' do
    multiplayer_sign_in
    click_button 'Paper'
    click_button 'Paper'
    expect(page).to have_content 'Draw! Harry & Eloise both chose Paper!'
  end

  scenario 'player 1 paper player 2 chooses scissors' do
    multiplayer_sign_in
    click_button 'Paper'
    click_button 'Scissors'
    expect(page).to have_content 'Eloise wins! Scissors beats Paper!'
  end

  scenario 'player 1 scissors player 2 chooses rock' do
    multiplayer_sign_in
    click_button 'Scissors'
    click_button 'Rock'
    expect(page).to have_content 'Eloise wins! Rock beats Scissors!'
  end

  scenario 'player 1 scissors player 2 chooses paper' do
    multiplayer_sign_in
    click_button 'Scissors'
    click_button 'Paper'
    expect(page).to have_content 'Harry wins! Scissors beats Paper!'
  end

  scenario 'player 1 scissors player 2 chooses scissors' do
    multiplayer_sign_in
    click_button 'Scissors'
    click_button 'Scissors'
    expect(page).to have_content 'Draw! Harry & Eloise both chose Scissors!'
  end

end
