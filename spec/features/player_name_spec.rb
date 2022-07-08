feature 'player name' do
  scenario 'diplay name entered by user' do
    visit '/name-form'
    fill_in 'player_name', with: 'Ollie'
    click_button 'Submit'
    expect(page).to have_content('Ollie')
  end
end
