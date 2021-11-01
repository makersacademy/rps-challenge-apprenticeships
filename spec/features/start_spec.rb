feature 'Play page' do
  scenario 'visit play' do
    start_game
    expect(page).to have_content('Make your choice!')
  end

end