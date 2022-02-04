feature 'Enter names' do
  scenario 'player submit name' do
    visit '/'
    fill_in :player_name, with: 'Anna'
    click_button 'Submit'
    expect(page).to have_content('Anna')
  end
end
