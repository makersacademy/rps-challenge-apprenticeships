feature 'sign in with your name' do
  
  scenario 'will set up a game showing the users and the opponents name' do
    visit('/')
    fill_in('Player 1', with: 'Freddy')
    click_button('Start')
    expect(page).to have_content('Freddy vs. Computer')
  end

end