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
