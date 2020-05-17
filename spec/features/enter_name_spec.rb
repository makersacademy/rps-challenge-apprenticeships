feature 'Enter names' do
  scenario 'Player 1 submits their name' do
    visit('/')
    fill_in :player_1_name, with: 'CJ'
    click_button 'Submit'
    expect(page).to have_content 'CJ'
  end
end
