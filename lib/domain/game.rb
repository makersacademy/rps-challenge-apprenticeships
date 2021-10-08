class Game

  attr_reader :game_code, :player_one, :player_two, :game_type

  def initialize(code, player_one, player_two, game_type)
    @game_code = code
    @player_one = player_one
    @player_two = player_two
    @game_type = game_type
  end

  def ==(other)
    @game_code == other.game_code
  end
end