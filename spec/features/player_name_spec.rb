feature 'Enter player name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player_name, with: 'Scott'
    click_button 'Submit'
    expect(page).to have_content 'Welcome to RPS Scott'
  end
end