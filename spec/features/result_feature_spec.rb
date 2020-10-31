feature 'Displays users selection correctly to the screen' do
  scenario 'User clicks rock' do
    submit_name
    click_button 'Rock'
    expect(page).to have_content('Bob chose: Rock')
  end

  scenario 'User clicks paper' do
    submit_name
    click_button 'Paper'
    expect(page).to have_content('Bob chose: Paper')
  end

  scenario 'User clicks scissors' do
    submit_name
    click_button 'Scissors'
    expect(page).to have_content('Bob chose: Scissors')
  end
end

feature 'User can play again' do
  scenario 'Play again button displayed' do
    submit_name
    click_button 'Scissors'
    expect(page).to have_button("Play Again")
  end

  scenario 'Play again button redirects back to play page' do
    submit_name
    click_button 'Scissors'
    click_button 'Play Again'
    expect(page).to have_content('Click icon to take turn')
  end
end
