def user_starts_game
  visit '/'
  click_button 'Single Player'
  fill_in "name", with: "Foo"
  click_button "Submit"
end

def two_player_start
  visit '/two_player'
  fill_in "player1", with: "Foo"
  fill_in "player2", with: "Bar"
  click_button 'Submit'
end

def extended_game_start
  # stub to ensure consistency of random method in testing
  allow_any_instance_of(Game).to receive(:extended_computer_choice).and_return("Lizard")

  visit '/'
  click_button 'Rock, Paper, Scissor, Lizard, Spock'
  fill_in "name", with: "Foo"
  click_button "Submit"
end

def run_game(user_choice)
  # stub to ensure consistency of random method in testing
  allow_any_instance_of(Game).to receive(:computer_choice).and_return("Scissors")

  user_starts_game
  click_button(user_choice)
end
