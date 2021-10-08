class Game

  attr_reader :game_code, :player_one, :player_two, :game_type

  def initialize(code, player_one, player_two, game_type)
    @game_code = code
    @player_one = player_one
    @player_two = player_two
    @game_type = game_type
  end

  def ==(other)
    if self.class == other.class
      @game_code == other.game_code
    else 
      false
    end
  end
end