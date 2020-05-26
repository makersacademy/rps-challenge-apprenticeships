feature 'Getting output' do
  scenario 'choosing rock' do
    visit('/')
    fill_in :player_1_name, with: 'Kate'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content('You chose rock')
  end

  scenario 'choosing paper' do
    visit('/')
    fill_in :player_1_name, with: 'Kate'
    click_button 'Submit'
    click_button 'Paper'
    expect(page).to have_content('You chose paper')
  end

  scenario 'choosing scissors' do
    visit('/')
    fill_in :player_1_name, with: 'Kate'
    click_button 'Submit'
    click_button 'Scissors'
    expect(page).to have_content('You chose scissors')
  end
end
