feature 'User visits app page' do
  scenario 'there is a form to enter name and start game' do
    visit ('/')
    find_field('player_name').value
    find_button('Start Game').click
  end

  scenario 'user enters name and clicks to play' do
    visit ('/')
    fill_in 'player_name', with: 'Yossarian'
    click_button 'Start Game'
    expect(page).to have_content("Choose your weapon Yossarian")
  end

end
