feature 'home page' do
  scenario 'visiting home page should ask user to enter their name' do
    visit '/'
    expect(page).to have_content('Enter your name:')
  end

  scenario 'user enters their name and is taken to /game' do
    user_starts_game
    expect(page).to have_content('Enter your choice, Foo:')
  end
end
