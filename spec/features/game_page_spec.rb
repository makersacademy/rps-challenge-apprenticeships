feature 'game page' do
  scenario 'visit game page greet user with their name' do
    fill_name_and_play
    expect(page).to have_content('Hello Marlon, welcome to the game! Please choose your move.')
  end

  scenario 'game page should have rock, paper, scissors buttons' do
    fill_name_and_play
    expect(page).to have_selector(:link_or_button, 'Rock')
    save_and_open_page
  end
end
