feature 'Displays users selection correctly to the screen' do
  scenario 'User clicks rock' do
    visit '/'
    fill_in "name", with: 'Bob'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content('Bob chose: rock')
  end

  scenario 'User clicks paper' do
    visit '/'
    fill_in "name", with: 'Bob'
    click_button 'Submit'
    click_button 'Paper'
    expect(page).to have_content('Bob chose: paper')
  end

  scenario 'User clicks scissors' do
    visit '/'
    fill_in "name", with: 'Bob'
    click_button 'Submit'
    click_button 'Scissors'
    expect(page).to have_content('Bob chose: scissors')
  end
end

feature 'User can play again' do
  scenario 'Play again button displayed' do
    visit '/'
    fill_in "name", with: 'Bob'
    click_button 'Submit'
    click_button 'Scissors'
    expect(page).to have_button("Play Again")
  end

  scenario 'Play again button redirects back to play page' do
    visit '/'
    fill_in "name", with: 'Bob'
    click_button 'Submit'
    click_button 'Scissors'
    click_button 'Play Again'
    expect(page).to have_content('Click button to take turn')
  end
end
