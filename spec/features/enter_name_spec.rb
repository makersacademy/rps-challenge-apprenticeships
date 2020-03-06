require './app'

feature 'Enter name' do
  scenario 'submit name' do
    visit('/')
    fill_in :player_name, with: 'Ion'
    click_button 'Submit'
    expect(page).to have_content 'Ion vs. Computer'
  end
end
