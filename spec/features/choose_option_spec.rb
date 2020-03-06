require './app'

feature 'Choose option' do
  scenario 'choosing rock' do
    visit('/')
    fill_in :player_name, with: 'Nora'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content "You chose Rock"
  end
end