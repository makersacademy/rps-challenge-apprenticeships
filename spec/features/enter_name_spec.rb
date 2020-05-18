feature 'Enter names' do
  scenario 'Player 1 submits their name' do
    visit('/start-game')
    fill_in 'name', with: 'CJ'
    click_button 'Submit'
    expect(page).to have_content 'CJ'
  end
end
