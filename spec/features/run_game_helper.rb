def run_game(user_choice)
    # stub to ensure consistency of random method in testing
    allow_any_instance_of(Game).to receive(:computer_choice).and_return("Scissors")
  
    user_starts_game
    select user_choice, from: "choice"
    click_button "Go!"
end