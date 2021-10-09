class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def winner
    if player1.chosen == player2.chosen
      result = "Draw"
    elsif (player1.chosen == "rock" && player2.chosen == "scissors") ||
          (player1.chosen == "paper" && player2.chosen == "rock") ||
          (player1.chosen == "scissors" && player2.chosen == "paper")
      result = "#{@player1.name} Wins"
    else
      result = "#{@player2.name} Wins"
    end
    reset()
    return result
  end

  private
  
  def reset
    player1.choose("")
    player2.choose("")
  end
end
