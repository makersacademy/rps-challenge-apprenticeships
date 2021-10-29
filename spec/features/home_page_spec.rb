feature 'Player' do
  scenario 'Enter the players name' do
    visit '/'
    fill_in :player_1_name, with:'Rebecca'
    click_button 'Submit'
    save_and_open_page
    expect(page).to have_content('Rebecca')
  end
end