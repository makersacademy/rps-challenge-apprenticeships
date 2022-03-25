feature 'Name entry form' do
  scenario 'Lets a player enter their name' do
    visit('/')
    fill_in :player_name, with: 'Luci'
    click_button 'PLAY!'
    expect(page).to have_content 'Luci has joined the game for RPS!'
  end
end
