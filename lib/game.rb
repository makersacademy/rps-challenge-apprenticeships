class Game
  def result(player, computer)
    if player == computer
      return "draw"
    elsif (player == "rock" && computer == "scissors") || (player == "paper" && computer == "rock") || (player == "scissors" && computer == "paper")
      return "win"
    else
      return "loss"
    end
  end
end
