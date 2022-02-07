feature 'User visits app page' do
  scenario 'there is a form to enter name and start game' do
    visit ('/')
    find_field('player_name').value
    find_button('Play').click
  end

  scenario 'user enters name and clicks to play' do
    enter_name_and_play
    expect(page).to have_content("Choose your weapon Yossarian")
  end

  scenario 'user selects a weapon and the game plays' do
    enter_name_and_play
    pick_your_weapon
    page.has_content?("You won" || "The computer beat you" || "It's a draw")
  end

end
