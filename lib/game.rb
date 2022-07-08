class Game
  def result(player, computer)
    return "draw" if draw?(player, computer)
    return "win" if win?(player, computer)
    return "loss"
  end

  private

  def draw?(player, computer)
    return player == computer
  end

  def win?(player, computer)
    return (player == "rock" && computer == "scissors") ||
      (player == "paper" && computer == "rock") ||
      (player == "scissors" && computer == "paper")
  end
end
