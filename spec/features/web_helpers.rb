def sign_up_and_start_single_player_game
  visit('/')
  @user_name = "player 1"
  fill_in :username, with: @user_name
  click_button 'start-vs-pc'
end
