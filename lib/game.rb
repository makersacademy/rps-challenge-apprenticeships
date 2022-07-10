class Game
  def initialize(player, other_player=nil)
    @player = player
    @player_name = player.name
  end

  def player
    return @player
  end

  def player_name
    return @player_name
  end

  def assign_move(move)
    @player.store_player_move(move)
  end
  
end