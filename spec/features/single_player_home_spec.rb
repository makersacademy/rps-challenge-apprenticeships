feature 'single player home page' do
  scenario 'should ask user to enter their name' do
    visit '/single_player'
    expect(page).to have_content('Enter your name:')
  end

  scenario 'user enters their name and is taken to /single_player_game' do
    user_starts_game
    expect(page).to have_content('Enter your choice, Foo:')
  end
end
