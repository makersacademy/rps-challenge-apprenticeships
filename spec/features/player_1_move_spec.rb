feature 'player 1 name page' do
  scenario 'shows the players name' do
    visit('/')
    click_link("Play rock paper scissors!")
    fill_in :player_1_name, with: "Dark"
    click_button('Submit')
    expect(page).to have_content('Dark choose a move!')
  end
end