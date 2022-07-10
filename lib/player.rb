class Player
  def initialize(name)
    @name = name
    @player_move = ""
  end

  def name
    return @name
  end

  def store_player_move(move)
    @player_move = move
  end

  def get_player_move
    return @player_move
  end

end
