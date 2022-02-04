feature 'User visits app page' do
  scenario 'there is a form to enter name and start game' do
    visit ('/')
    find_field('player_name').value
    find_button('Start Game').click
  end

  scenario 'user enters name and clicks to play' do
    enter_name_and_play
    expect(page).to have_content("Choose your weapon Yossarian")
  end

  scenario 'user selects a weapon and the game starts' do
    visit ('/play')
    fill_in 'player_weapon', with: 'rock'
    click_button 'Submit Choice'
    expect(page).to have_content("You Won")
  end

end
