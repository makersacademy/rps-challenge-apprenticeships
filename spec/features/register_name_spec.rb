feature 'Register name' do
  scenario 'submits name' do
    visit('/')
    fill_in :player_name, with: 'Melissa'
    click_button 'Submit'
    expect(page).to have_content 'Melissa vs. Computer'
  end
end
