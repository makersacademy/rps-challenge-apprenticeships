module RockPaperScissors

  WINNING_MOVES = {
    'ROCK' => 'SCISSORS',
    'PAPER' => 'ROCK',
    'SCISSORS' => 'PAPER'
  }
  ALLOWED_GUESSES = %w[ROCK PAPER SCISSORS]

  # @return 1 if player 1 wins, 2 if player 2 wins or 0 if it's a draw
  def self.find_winner(player_1_guess, player_2_guess)
    raise ArgumentError unless ALLOWED_GUESSES.include? player_1_guess and ALLOWED_GUESSES.include? player_2_guess
    return 0 if player_1_guess == player_2_guess
    return WINNING_MOVES[player_1_guess] == player_2_guess ? 1 : 2
  end
end