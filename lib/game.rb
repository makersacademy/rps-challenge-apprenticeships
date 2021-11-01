class Game
  CHOICE = ["Rock", "Paper", "Scissors"]
  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def computer_choice
    CHOICE.sample
  end

  def play
    if @player.choice == "Rock" && @computer.choice == 'Scissors'
      "You won"
    elsif @player.choice == "Paper" && @computer.choice == 'Rock'
      "You won"
    elsif @player.choice == "Scissors" && @computer.choice == 'Paper'
      "You won"
    elsif @player.choice == @computer.choice
      "It's a draw"
    else
      "You lost"
    end
  end
end