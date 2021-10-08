class Game

  attr_reader :game_code, :player_one, :player_two

  def initialize(code, player_one, player_two)
    @game_code = code
    @player_one = player_one
    @player_two = player_two
  end
end