feature 'Play the game' do
  scenario 'Allows players to play against each other' do
    visit('/fight')
    fill_in 'name', with: 'CJ'
    click_button 'Submit'
    expect(page).to have_content 'vs Computer'
  end
end
