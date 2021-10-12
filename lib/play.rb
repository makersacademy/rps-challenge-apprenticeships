class Play

  BEATS = {
    'Rock'     => 'Paper',
    'Paper'    => 'Scissors',
    'Scissors' => 'Rock',
  }

  def computer
    ["Rock", "Paper", "Scissors"].sample
  end

  def play(move, computer_move)
    if BEATS[move] == computer_move
      "Lose"
    elsif move == computer_move
      "Draw"
    else
      "Win"
    end
  end

end