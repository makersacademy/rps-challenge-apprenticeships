feature 'Users can start a game against ai' do
  scenario 'Player enters name and clicks Start vs PC' do
    sign_up_and_start_single_player_game
    expect(page).to have_current_path("/single-player")
    expect(page).to have_selector('#player_one', text: @user_name)
    expect(page).to have_selector('#player_two', text: "ai")
  end
end
