class Player
  attr_reader :player_name, :move, :available_move

  def initialize(player)
    @player_name = player.capitalize
    @available_move = ["Rock", "Paper", "Scissors"]
  end

  def move_made(move)
    @move = move
  end

end
