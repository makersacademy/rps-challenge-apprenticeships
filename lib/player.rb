class Player
  attr_reader :player_name, :move

  def initialize(player)
    @player_name = player
  end

  def move_made(move)
    @move = move
  end

end
