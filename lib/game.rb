class Game
  MOVE_WINS = {
    "rock" => "scissors",
    "scissors" => "paper",
    "paper" => "rock"
  }.freeze

  def result(player1, player2 = random_move)
    res = "#{player1} vs. #{player2}: it's a "

    if player1 == player2
      res += "draw!"
    elsif MOVE_WINS[player1] == player2
      res += "win!"
    else
      res += "loose!"
    end

    return res
    # "#{player1 == player2 ? "draw!" : (MOVE_WINS[player1] == player2 ? "win!" : "loose!")}"
  end

  def random_move 
    return ["rock", "paper", "scissors"].sample
  end
end
