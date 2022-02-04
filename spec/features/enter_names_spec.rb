feature 'home page' do
  scenario 'players can enter their names' do
    sign_in_and_play
    expect(page).to have_content('Keith vs CPU')
  end
end
