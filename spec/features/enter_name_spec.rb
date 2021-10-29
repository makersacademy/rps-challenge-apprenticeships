feature 'Enter user name' do
  scenario 'visit test page' do
    visit('/')
    fill_in :player_name, with: 'Tom'
    click_button 'Submit'
    expect(page).to have_content 'Tom'
  end
end
