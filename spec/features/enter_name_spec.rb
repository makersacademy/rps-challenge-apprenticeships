feature 'Enter name' do
  scenario 'Allows user to enter their name' do
    visit('/')
      fill_in :player_name, with: 'Odaine'
      click_button 'Submit'
    expect(page).to have_content 'Odaine vs. Computer'
  end
end