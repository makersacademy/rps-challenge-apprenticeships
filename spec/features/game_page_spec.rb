feature 'game page' do
  scenario 'visit game page greet user with their name' do
    visit '/game'
    expect(page).to have_content('Hello Marlon, welcome to the game! Please choose your move.')
    save_and_open_page
  end
end
