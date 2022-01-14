feature 'player1' do
  scenario 'player enters name' do
    visit('/')
    fill_in :player_name, with: 'Alex'
    click_button 'Submit'
    expect(page).to have_content 'Alex'
  end
end
