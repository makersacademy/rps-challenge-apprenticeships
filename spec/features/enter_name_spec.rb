feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'player_1_name'
    click_button 'Play'
    expect(page).to have_content 'player_1_name'
  end
end