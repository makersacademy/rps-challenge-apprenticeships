feature 'player name' do
  scenario 'allows a player to enter their name' do
    visit('/')
    fill_in :name, with: 'Harry'
    click_button 'Submit'
    expect(page).to have_content 'Harry'
  end
end