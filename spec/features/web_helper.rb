def user_starts_game
  visit '/single_player'
  fill_in "name", with: "Foo"
  click_button "Submit"
end

def two_player_start
  visit '/two_player'
  fill_in "player1", with: "Foo"
  fill_in "player2", with: "Bar"
  click_button 'Submit'
end