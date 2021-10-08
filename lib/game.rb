require_relative 'player'
class Game
  attr_reader :player_name
  def initialize(player_name = Player.new)
    @player_name = player_name
  end
end
