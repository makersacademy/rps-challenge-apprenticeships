feature 'Entering player name: ' do
  scenario 'a player can enter their name' do
    visit('/')
    fill_in :player_name, with: 'Michelle'
    click_button 'Submit'
    save_and_open_page
    expect(page).to have_content 'Player: Michelle'
  end
end