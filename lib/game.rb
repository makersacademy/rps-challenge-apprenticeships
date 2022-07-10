class Game
  def initialize(player)
    @player = player
    @player_name = player.name
  end

  def player_name
    return @player_name
  end
end