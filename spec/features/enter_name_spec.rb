require './app'

feature 'Enter name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player_1_name, with: 'Anna'
    click_button 'Submit'
    expect(page).to have_content('Choose your weapon, Anna!')
  end
end