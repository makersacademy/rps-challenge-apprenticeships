feature 'Enter names' do
  scenario 'player submit name' do
    sign_in_and_play
    expect(page).to have_content('Anna')
  end
end
