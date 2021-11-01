class Game
  
  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def decisionengine
    return "The result is: Player Wins" if @player == 'Rock' && @computer == "Scissors"
    return "The result is: Player Wins" if @player == 'Scissors' && @computer == "Paper"
    return "The result is: Player Wins" if @player == 'Paper' && @computer == "Rock"
    return "The result is: Draw" if @player == @computer
    "The result is: Sorry you lost!"
  end
end
