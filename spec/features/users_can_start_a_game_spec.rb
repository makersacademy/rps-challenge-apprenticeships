feature 'Users can start a game' do
  scenario '' do
    visit('/')
    fill_in :name, with: "player 1"
    click_button 'start-pc'
    expect(page).to have_current_path("/game")
  end
end