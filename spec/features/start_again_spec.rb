require './app'

feature 'Start Again' do
  scenario 'start again' do
    visit('/')
    fill_in :player_name, with: 'Nora'
    click_button 'Submit'
    click_button 'Rock'
    click_button 'Start Again'
    expect(page).to have_content 'Rock Paper Scissors!'
  end
end