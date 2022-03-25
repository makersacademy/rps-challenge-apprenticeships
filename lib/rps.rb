module RockPaperScissors

  WINNING_MOVES = {
    'ROCK' => 'SCISSORS',
    'PAPER' => 'ROCK',
    'SCISSORS' => 'PAPER'
  }
  ALLOWED_GUESSES = %w[ROCK PAPER SCISSORS]

  # @return 1 if player 1 wins, 2 if player 2 wins or 0 if it's a draw
  def self.find_winner(p1_guess, p2_guess)
    raise ArgumentError unless ALLOWED_GUESSES.include? p1_guess and ALLOWED_GUESSES.include? p2_guess
    return 0 if p1_guess == p2_guess
    return WINNING_MOVES[p1_guess] == p2_guess ? 1 : 2
  end

  def self.allowed_guesses
    ALLOWED_GUESSES
  end
end