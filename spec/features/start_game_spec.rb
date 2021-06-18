feature 'Start game' do
  scenario 'player signs in and goes to start game page' do
    sign_in
    expect(page).to have_content('Hello Hannah. Let the game begin.')
  end
end