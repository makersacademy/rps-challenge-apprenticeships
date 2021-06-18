feature 'Start game' do
  scenario 'player signs in and goes to start game page' do
    visit('/')
    fill_in :name, with: 'Hannah'
    click_button('Submit')
    expect(page).to have_content('Hello Hannah. Let the game begin.')
  end
end