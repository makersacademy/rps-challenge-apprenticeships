feature 'Play the game' do
  scenario 'Allows players to play against each other' do
    visit('/fight')
    fill_in :player_1_name, with: 'CJ'
    click_button 'Submit'
    expect(page).to have_content ('choose your weapon')
  end
end
