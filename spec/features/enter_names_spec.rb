require './app'

feature 'Enter name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player_name, with: 'Nora'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Nora!'
  end
end
