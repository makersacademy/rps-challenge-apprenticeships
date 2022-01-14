feature 'Register the player name' do
  
  scenario 'submitting a player name' do
    visit ('/')
    fill_in :player_1, with: 'Olivia'
    click_button "Play!"

    expect(page).to have_content 'Olivia'
  end
end