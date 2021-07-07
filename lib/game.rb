class Game

  def random_hand
    ['ROCK', 'PAPER', 'SCISSORS'].sample
  end

  def play(player, computer)
    return "Draws!" if player == computer
    return "Wins!" if player == "ROCK" && computer == "SCISSORS"
    return "Wins!" if player == "PAPER" && computer == "ROCK"
    return "Wins!" if player == "SCISSORS" && computer == "PAPER"
    return "Loses!" if player == "ROCK" && computer == "PAPER"
    return "Loses!" if player == "PAPER" && computer == "SCISSORS"
    return "Loses!" if player == "SCISSORS" && computer == "ROCK"
  end
end
