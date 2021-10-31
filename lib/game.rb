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
end