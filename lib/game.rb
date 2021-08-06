class Game
  attr_reader :player_move

  def initialize(player_move)
    @player_move
    @computer_move = ""
    @options = ["Rock", "Paper", "Scissors"]
  end

  def present
    "Choose an option: Rock, Paper, Scissors"
  end

  def random
    move = @options.sample
    @computer_move << move
  end
end