feature 'Multiple rounds:' do
  scenario 'User can play multiple rounds of the game' do
    sign_up_and_start_single_player_game
    choose "rock-option"
    click_button "start-vs-pc"
    click_button "next-round"
    expect(page).to have_current_path('/single-player')
    choose "rock-option"
    click_button "start-vs-pc"
    expect(page).to have_current_path('/result')
  end
end