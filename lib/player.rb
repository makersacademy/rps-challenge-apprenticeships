class Player
  attr_accessor :player_name, :move, :available_move

  def initialize(player)
    @player_name = player.capitalize
    @available_move = ["Rock", "Paper", "Scissors", "Lizard", "Spock"]
  end

  def move_made(move)
    @move = move
  end

end
