feature 'Game page' do
  scenario 'visit game page' do
    visit '/'
    fill_in("player_name", with: "Jonah")
    click_button("play_button")
    expect(page).to have_content('Game')
  end
end
